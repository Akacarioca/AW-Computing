/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/CustomSetting/RefreshToken/*')
global class OptimizerPlusCustomSettingRefreshToken {
    global static String message;
    global OptimizerPlusCustomSettingRefreshToken() {

    }
    @HttpPost
    global static adapps.OptimizerPlusCustomSettingRefreshToken.ResponseWrapper storeRefreshToken() {
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
    global ResponseWrapper() {

    }
    global adapps.OptimizerPlusCustomSettingRefreshToken.ResponseWrapper errorResponse(String message) {
        return null;
    }
    global adapps.OptimizerPlusCustomSettingRefreshToken.ResponseWrapper successResponse(String id) {
        return null;
    }
}
}
