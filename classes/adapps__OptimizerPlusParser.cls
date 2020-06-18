/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/version1.1/OptimizerPlusParser/*')
global class OptimizerPlusParser {
    global static String message;
    global OptimizerPlusParser() {

    }
    @HttpPost
    global static adapps.OptimizerPlusParser.ResponseWrapper optiTestCreationLogic() {
        return null;
    }
global class ResponseWrapper {
    global String message {
        get;
        set;
    }
    global String optimizer_report_Id {
        get;
        set;
    }
    global String status {
        get;
        set;
    }
    global ResponseWrapper() {

    }
    global adapps.OptimizerPlusParser.ResponseWrapper errorResponse(String message) {
        return null;
    }
    global adapps.OptimizerPlusParser.ResponseWrapper successResponse(String id, String name) {
        return null;
    }
}
}
