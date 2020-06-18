/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/RunReport/*')
global class OptimizerPlusAutoRunService {
    global OptimizerPlusAutoRunService() {

    }
    @HttpGet
    global static adapps.OptimizerPlusAutoRunService.ResponseWrapper runReport() {
        return null;
    }
global class ResponseWrapper {
    global String message {
        get;
        set;
    }
    global String status {
        get;
        set;
    }
    global ResponseWrapper(String sts, String msg) {

    }
    global String serialize() {
        return null;
    }
}
}
