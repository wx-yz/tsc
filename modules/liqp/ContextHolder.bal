// This is an empty Ballerina class autogenerated to represent the `liqp.Template$ContextHolder` Java class.
//
// If you need the implementation of this class generated, please use the following command.
//
// $ bal bindgen [(-cp|--classpath) <classpath>...]
//               [(-mvn|--maven) <groupId>:<artifactId>:<version>]
//               [(-o|--output) <output-path>]
//               [--public]
//               (<class-name>...)
//
// E.g. $ bal bindgen liqp.Template\$ContextHolder

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `liqp.Template$ContextHolder` class.
@java:Binding {'class: "liqp.Template$ContextHolder"}
public distinct class ContextHolder {

    *java:JObject;

    # The `handle` field that stores the reference to the `liqp.Template$ContextHolder` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `liqp.Template$ContextHolder` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `liqp.Template$ContextHolder` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
}
