import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import tsc.java.lang as javalang;
import tsc.java.util as javautil;
import tsc.java.io as javaio;
import tsc.java.util.concurrent as javautilconcurrent;
import tsc.liqp.filters as liqpfilters;
import tsc.org.antlr.v4.runtime.tree as organtlrv4runtimetree;
import tsc.liqp.parser as liqpparser;
import tsc.liqp.tags as liqptags;

# Ballerina class mapping for the Java `liqp.Template` class.
@java:Binding {'class: "liqp.Template"}
public distinct class Template {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `liqp.Template` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `liqp.Template` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `liqp.Template` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `equals` method of `liqp.Template`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return liqp_Template_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `errors` method of `liqp.Template`.
    #
    # + return - The `javautil:List` value returning from the Java mapping.
    public function errors() returns javautil:List {
        handle externalObj = liqp_Template_errors(self.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `liqp.Template`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = liqp_Template_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getParseTree` method of `liqp.Template`.
    #
    # + return - The `organtlrv4runtimetree:ParseTree` value returning from the Java mapping.
    public function getParseTree() returns organtlrv4runtimetree:ParseTree {
        handle externalObj = liqp_Template_getParseTree(self.jObj);
        organtlrv4runtimetree:ParseTree newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `liqp.Template`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return liqp_Template_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `liqp.Template`.
    public function notify() {
        liqp_Template_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `liqp.Template`.
    public function notifyAll() {
        liqp_Template_notifyAll(self.jObj);
    }

    # The function that maps to the `render` method of `liqp.Template`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function render() returns string? {
        return java:toString(liqp_Template_render(self.jObj));
    }

    # The function that maps to the `render` method of `liqp.Template`.
    #
    # + arg0 - The `boolean` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + arg2 - The `javalang:Object` value required to map with the Java method parameter.
    # + arg3 - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function render2(boolean arg0, string arg1, javalang:Object arg2, javalang:Object[] arg3) returns string?|error {
        return java:toString(liqp_Template_render2(self.jObj, arg0, java:fromString(arg1), arg2.jObj, check jarrays:toHandle(arg3, "java.lang.Object")));
    }

    # The function that maps to the `render` method of `liqp.Template`.
    #
    # + arg0 - The `liqpparser:Inspectable` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function render3(liqpparser:Inspectable arg0) returns string? {
        return java:toString(liqp_Template_render3(self.jObj, arg0.jObj));
    }

    # The function that maps to the `render` method of `liqp.Template`.
    #
    # + arg0 - The `javautil:Map` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function render4(javautil:Map arg0) returns string? {
        return java:toString(liqp_Template_render4(self.jObj, arg0.jObj));
    }

    # The function that maps to the `render` method of `liqp.Template`.
    #
    # + arg0 - The `javautil:Map` value required to map with the Java method parameter.
    # + arg1 - The `javautilconcurrent:ExecutorService` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function render5(javautil:Map arg0, javautilconcurrent:ExecutorService arg1, boolean arg2) returns string? {
        return java:toString(liqp_Template_render5(self.jObj, arg0.jObj, arg1.jObj, arg2));
    }

    # The function that maps to the `render` method of `liqp.Template`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function render6(string arg0) returns string? {
        return java:toString(liqp_Template_render6(self.jObj, java:fromString(arg0)));
    }

    # The function that maps to the `render` method of `liqp.Template`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `javalang:Object` value required to map with the Java method parameter.
    # + arg2 - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function render7(string arg0, javalang:Object arg1, javalang:Object[] arg2) returns string?|error {
        return java:toString(liqp_Template_render7(self.jObj, java:fromString(arg0), arg1.jObj, check jarrays:toHandle(arg2, "java.lang.Object")));
    }

    # The function that maps to the `renderObject` method of `liqp.Template`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function renderObject(javalang:Object arg0) returns string? {
        return java:toString(liqp_Template_renderObject(self.jObj, arg0.jObj));
    }

    # The function that maps to the `renderUnguarded` method of `liqp.Template`.
    #
    # + arg0 - The `javautil:Map` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function renderUnguarded(javautil:Map arg0) returns string? {
        return java:toString(liqp_Template_renderUnguarded(self.jObj, arg0.jObj));
    }

    # The function that maps to the `renderUnguarded` method of `liqp.Template`.
    #
    # + arg0 - The `javautil:Map` value required to map with the Java method parameter.
    # + arg1 - The `TemplateContext` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function renderUnguarded2(javautil:Map arg0, TemplateContext arg1, boolean arg2) returns string? {
        return java:toString(liqp_Template_renderUnguarded2(self.jObj, arg0.jObj, arg1.jObj, arg2));
    }

    # The function that maps to the `renderUnguarded` method of `liqp.Template`.
    #
    # + arg0 - The `TemplateContext` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public function renderUnguarded3(TemplateContext arg0) returns string? {
        return java:toString(liqp_Template_renderUnguarded3(self.jObj, arg0.jObj));
    }

    # The function that maps to the `toStringAST` method of `liqp.Template`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function toStringAST() returns string? {
        return java:toString(liqp_Template_toStringAST(self.jObj));
    }

    # The function that maps to the `toStringTree` method of `liqp.Template`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function toStringTree() returns string? {
        return java:toString(liqp_Template_toStringTree(self.jObj));
    }

    # The function that maps to the `wait` method of `liqp.Template`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = liqp_Template_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `liqp.Template`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = liqp_Template_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `liqp.Template`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = liqp_Template_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `with` method of `liqp.Template`.
    #
    # + arg0 - The `liqpfilters:Filter` value required to map with the Java method parameter.
    # + return - The `Template` value returning from the Java mapping.
    public function 'with(liqpfilters:Filter arg0) returns Template {
        handle externalObj = liqp_Template_with(self.jObj, arg0.jObj);
        Template newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `with` method of `liqp.Template`.
    #
    # + arg0 - The `liqptags:Tag` value required to map with the Java method parameter.
    # + return - The `Template` value returning from the Java mapping.
    public function with2(liqptags:Tag arg0) returns Template {
        handle externalObj = liqp_Template_with2(self.jObj, arg0.jObj);
        Template newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `withContextHolder` method of `liqp.Template`.
    #
    # + arg0 - The `ContextHolder` value required to map with the Java method parameter.
    # + return - The `Template` value returning from the Java mapping.
    public function withContextHolder(ContextHolder arg0) returns Template {
        handle externalObj = liqp_Template_withContextHolder(self.jObj, arg0.jObj);
        Template newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `withProtectionSettings` method of `liqp.Template`.
    #
    # + arg0 - The `ProtectionSettings` value required to map with the Java method parameter.
    # + return - The `Template` value returning from the Java mapping.
    public function withProtectionSettings(ProtectionSettings arg0) returns Template {
        handle externalObj = liqp_Template_withProtectionSettings(self.jObj, arg0.jObj);
        Template newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `withRenderSettings` method of `liqp.Template`.
    #
    # + arg0 - The `RenderSettings` value required to map with the Java method parameter.
    # + return - The `Template` value returning from the Java mapping.
    public function withRenderSettings(RenderSettings arg0) returns Template {
        handle externalObj = liqp_Template_withRenderSettings(self.jObj, arg0.jObj);
        Template newObj = new (externalObj);
        return newObj;
    }

}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `Template` or the `javaio:IOException` value returning from the Java mapping.
public function Template_parse(javaio:File arg0) returns Template|javaio:IOException {
    handle|error externalObj = liqp_Template_parse(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Template newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `ParseSettings` value required to map with the Java method parameter.
# + arg2 - The `RenderSettings` value required to map with the Java method parameter.
# + return - The `Template` value returning from the Java mapping.
public function Template_parse10(string arg0, ParseSettings arg1, RenderSettings arg2) returns Template {
    handle externalObj = liqp_Template_parse10(java:fromString(arg0), arg1.jObj, arg2.jObj);
    Template newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `liqpparser:Flavor` value required to map with the Java method parameter.
# + return - The `Template` or the `javaio:IOException` value returning from the Java mapping.
public function Template_parse2(javaio:File arg0, liqpparser:Flavor arg1) returns Template|javaio:IOException {
    handle|error externalObj = liqp_Template_parse2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Template newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `ParseSettings` value required to map with the Java method parameter.
# + return - The `Template` or the `javaio:IOException` value returning from the Java mapping.
public function Template_parse3(javaio:File arg0, ParseSettings arg1) returns Template|javaio:IOException {
    handle|error externalObj = liqp_Template_parse3(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Template newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `ParseSettings` value required to map with the Java method parameter.
# + arg2 - The `RenderSettings` value required to map with the Java method parameter.
# + return - The `Template` or the `javaio:IOException` value returning from the Java mapping.
public function Template_parse4(javaio:File arg0, ParseSettings arg1, RenderSettings arg2) returns Template|javaio:IOException {
    handle|error externalObj = liqp_Template_parse4(arg0.jObj, arg1.jObj, arg2.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Template newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `javaio:InputStream` value required to map with the Java method parameter.
# + return - The `Template` value returning from the Java mapping.
public function Template_parse5(javaio:InputStream arg0) returns Template {
    handle externalObj = liqp_Template_parse5(arg0.jObj);
    Template newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `javaio:InputStream` value required to map with the Java method parameter.
# + arg1 - The `ParseSettings` value required to map with the Java method parameter.
# + return - The `Template` value returning from the Java mapping.
public function Template_parse6(javaio:InputStream arg0, ParseSettings arg1) returns Template {
    handle externalObj = liqp_Template_parse6(arg0.jObj, arg1.jObj);
    Template newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `Template` value returning from the Java mapping.
public function Template_parse7(string arg0) returns Template {
    handle externalObj = liqp_Template_parse7(java:fromString(arg0));
    Template newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `liqpparser:Flavor` value required to map with the Java method parameter.
# + return - The `Template` or the `javaio:IOException` value returning from the Java mapping.
public function Template_parse8(string arg0, liqpparser:Flavor arg1) returns Template|javaio:IOException {
    handle|error externalObj = liqp_Template_parse8(java:fromString(arg0), arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Template newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `parse` method of `liqp.Template`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `ParseSettings` value required to map with the Java method parameter.
# + return - The `Template` value returning from the Java mapping.
public function Template_parse9(string arg0, ParseSettings arg1) returns Template {
    handle externalObj = liqp_Template_parse9(java:fromString(arg0), arg1.jObj);
    Template newObj = new (externalObj);
    return newObj;
}

function liqp_Template_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "liqp.Template",
    paramTypes: ["java.lang.Object"]
} external;

function liqp_Template_errors(handle receiver) returns handle = @java:Method {
    name: "errors",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_getParseTree(handle receiver) returns handle = @java:Method {
    name: "getParseTree",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_parse(handle arg0) returns handle|error = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.io.File"]
} external;

function liqp_Template_parse10(handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.lang.String", "liqp.ParseSettings", "liqp.RenderSettings"]
} external;

function liqp_Template_parse2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.io.File", "liqp.parser.Flavor"]
} external;

function liqp_Template_parse3(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.io.File", "liqp.ParseSettings"]
} external;

function liqp_Template_parse4(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.io.File", "liqp.ParseSettings", "liqp.RenderSettings"]
} external;

function liqp_Template_parse5(handle arg0) returns handle = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.io.InputStream"]
} external;

function liqp_Template_parse6(handle arg0, handle arg1) returns handle = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.io.InputStream", "liqp.ParseSettings"]
} external;

function liqp_Template_parse7(handle arg0) returns handle = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.lang.String"]
} external;

function liqp_Template_parse8(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.lang.String", "liqp.parser.Flavor"]
} external;

function liqp_Template_parse9(handle arg0, handle arg1) returns handle = @java:Method {
    name: "parse",
    'class: "liqp.Template",
    paramTypes: ["java.lang.String", "liqp.ParseSettings"]
} external;

function liqp_Template_render(handle receiver) returns handle = @java:Method {
    name: "render",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_render2(handle receiver, boolean arg0, handle arg1, handle arg2, handle arg3) returns handle = @java:Method {
    name: "render",
    'class: "liqp.Template",
    paramTypes: ["boolean", "java.lang.String", "java.lang.Object", "[Ljava.lang.Object;"]
} external;

function liqp_Template_render3(handle receiver, handle arg0) returns handle = @java:Method {
    name: "render",
    'class: "liqp.Template",
    paramTypes: ["liqp.parser.Inspectable"]
} external;

function liqp_Template_render4(handle receiver, handle arg0) returns handle = @java:Method {
    name: "render",
    'class: "liqp.Template",
    paramTypes: ["java.util.Map"]
} external;

function liqp_Template_render5(handle receiver, handle arg0, handle arg1, boolean arg2) returns handle = @java:Method {
    name: "render",
    'class: "liqp.Template",
    paramTypes: ["java.util.Map", "java.util.concurrent.ExecutorService", "boolean"]
} external;

function liqp_Template_render6(handle receiver, handle arg0) returns handle = @java:Method {
    name: "render",
    'class: "liqp.Template",
    paramTypes: ["java.lang.String"]
} external;

function liqp_Template_render7(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "render",
    'class: "liqp.Template",
    paramTypes: ["java.lang.String", "java.lang.Object", "[Ljava.lang.Object;"]
} external;

function liqp_Template_renderObject(handle receiver, handle arg0) returns handle = @java:Method {
    name: "renderObject",
    'class: "liqp.Template",
    paramTypes: ["java.lang.Object"]
} external;

function liqp_Template_renderUnguarded(handle receiver, handle arg0) returns handle = @java:Method {
    name: "renderUnguarded",
    'class: "liqp.Template",
    paramTypes: ["java.util.Map"]
} external;

function liqp_Template_renderUnguarded2(handle receiver, handle arg0, handle arg1, boolean arg2) returns handle = @java:Method {
    name: "renderUnguarded",
    'class: "liqp.Template",
    paramTypes: ["java.util.Map", "liqp.TemplateContext", "boolean"]
} external;

function liqp_Template_renderUnguarded3(handle receiver, handle arg0) returns handle = @java:Method {
    name: "renderUnguarded",
    'class: "liqp.Template",
    paramTypes: ["liqp.TemplateContext"]
} external;

function liqp_Template_toStringAST(handle receiver) returns handle = @java:Method {
    name: "toStringAST",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_toStringTree(handle receiver) returns handle = @java:Method {
    name: "toStringTree",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "liqp.Template",
    paramTypes: []
} external;

function liqp_Template_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "liqp.Template",
    paramTypes: ["long"]
} external;

function liqp_Template_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "liqp.Template",
    paramTypes: ["long", "int"]
} external;

function liqp_Template_with(handle receiver, handle arg0) returns handle = @java:Method {
    name: "with",
    'class: "liqp.Template",
    paramTypes: ["liqp.filters.Filter"]
} external;

function liqp_Template_with2(handle receiver, handle arg0) returns handle = @java:Method {
    name: "with",
    'class: "liqp.Template",
    paramTypes: ["liqp.tags.Tag"]
} external;

function liqp_Template_withContextHolder(handle receiver, handle arg0) returns handle = @java:Method {
    name: "withContextHolder",
    'class: "liqp.Template",
    paramTypes: ["liqp.Template$ContextHolder"]
} external;

function liqp_Template_withProtectionSettings(handle receiver, handle arg0) returns handle = @java:Method {
    name: "withProtectionSettings",
    'class: "liqp.Template",
    paramTypes: ["liqp.ProtectionSettings"]
} external;

function liqp_Template_withRenderSettings(handle receiver, handle arg0) returns handle = @java:Method {
    name: "withRenderSettings",
    'class: "liqp.Template",
    paramTypes: ["liqp.RenderSettings"]
} external;

