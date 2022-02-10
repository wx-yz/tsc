import ballerina/io;
import ballerina/http;
import tsc.liqp as liqp;
import ballerinax/mysql;

public type Schema record {|
    string id;
    string name;
    string description;
    string tags;
    string accountId;
    string createdAt;
    string updatedAt;
    string updatedBy;
|};

public type SchemaVersions record {|
    string id;
    string schemaId;
    string 'version;
    string 'type;
    string schemaDefinition;
    string description;
    string createdAt;
    string updatedAt;
    string updatedBy;
|};

public type SchemaMapping record {|
    string id;
    string schemaVersionId;
    string validationScheme;
    string transformType;
    string transform;
    string 'version;
    string active;
|};

public type TransformResult record {|
    string mappingId;
    string payload;
|};

public type TestTransform record {|
    string schemaType;
    string transformType;
    boolean validateSchema;
    string schemaDefinition;
    string mapping;
    string payload;
|};

final mysql:Client db = check new (user = "root", password = "root", database = "TSC", host="127.0.0.1", port=3306);
service /tsc on  new http:Listener(9000) {    

    # Test a transformation, no talking to the DB
    # + return - Transformed result (Through Liquid templates at the moment)
    resource function post testTransform(@http:Payload json input) returns json|error {
        string mapping = <string> check input.mapping ;
        string message = <string> check input.payload;              

        liqp:Template template = liqp:Template_parse7(mapping);
        string|() r = template.render6(message);

        json result = {
            "result": r
        };
        return result;
    }

    # Get All Schemas from the DB
    # + return - All schemas from DB
    resource function get getAllSchemas() returns Schema[] {
        Schema[] schema = [];
        stream<Schema, error?> rs = db->query(`SELECT * FROM TSC.Schema`);
        error? ur = from Schema s in rs do { schema.push(s); };
        if ur is error { 
            io:println("Error ", ur); 
        }                      
        return schema;
    
    }

    # Accept schema version UUID (from getAllSchemas), lookup in the DB and return result
    # + return - All schema versions
    resource function get getSchemaVersions() returns SchemaVersions[] {
        SchemaVersions[] sv = [];
        stream<SchemaVersions, error?> rs = db->query(`SELECT * FROM TSC.SchemaVersions`);
        error? ur = from SchemaVersions s in rs do { sv.push(s); };
        if ur is error {
            io:println("Error ", ur);
        }
        return sv;
    }

    # Accept a schemaId and return all mappings defined for that schema    
    # + return - All schema mappings
    resource function get getAllMappings() returns SchemaMapping[] {
        SchemaMapping[] sm = [];
        stream<SchemaMapping, error?> rs = db->query(`SELECT * FROM TSC.SchemaMapping`);
        error? ur = from SchemaMapping m in rs do { sm.push(m); };
        if ur is error {
            io:println("Error ", ur);
        }
        return sm;
    }

    # Accept a mappingId, and a payload. Apply the corresponding mapping (SchemaMapping) to the payload and return
    # + return - Transformed payload
    resource function post transform(@http:Payload json input) returns json|error {
        string mapId = <string> check input.mappingId;
        string pl = <string> check input.payload;

        SchemaMapping sm = check db->queryRow(`SELECT * FROM TSC.SchemaMapping WHERE id = ${mapId}`);

        liqp:Template template = liqp:Template_parse7(sm.transform);

        json result = {
            "result": template.render6(pl) ?: ""
        };
        return result;


    }
}
