# Message transformation using Liquid templates with Ballerina

This is a PoC for demonstrating message transformation using Liquid templates with Ballerina language

## Data model

There are 3 major entities for this PoC - Schema, SchemaVersions and SchemaMapping
1. Schema - Represent a schema entity. Schema can be XML or JSON Schema. For this PoC there's no Schema validation, so this is just a place holder
2. SchemaVersions - One Schema can have one or more SchemaVersions. Tracking changes to the schema
3. SchemaMappying - A given SchemaVersion can have one or more SchemaMapping. For the PoC there's only one but can have many. This holds the actual Liquid template

## How to run

1. Checkout - git clone https://github.com/wx-yz/tsc-poc/
2. Run a MySQL server. Use mysql docker image to quickly get the database going. Adjust the volume mount location for persisting data, 
```
docker run --name database \
  -v /home/wxyz/.local/bin/mysql_data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=root \
  -p 3306:3306 \
  mysql:latest
  ```
3. Load the db dump to create tables and sample data
4. Run `bal build` on the root of the project dir
5. Run `bal run target/bin/tsc.jar`
6. Load the Postman collection to Postman and test

