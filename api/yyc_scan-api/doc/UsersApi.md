# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://yycscan-backend.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersGetUserProfileGet**](UsersApi.md#usersgetuserprofileget) | **GET** /Users/GetUserProfile | 
[**usersLoginGet**](UsersApi.md#usersloginget) | **GET** /Users/Login | 


# **usersGetUserProfileGet**
> usersGetUserProfileGet(userId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UsersApi();
final userId = userId_example; // String | 

try {
    api_instance.usersGetUserProfileGet(userId);
} catch (e) {
    print('Exception when calling UsersApi->usersGetUserProfileGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersLoginGet**
> UsersLoginGet200Response usersLoginGet(idToken)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UsersApi();
final idToken = idToken_example; // String | 

try {
    final result = api_instance.usersLoginGet(idToken);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersLoginGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idToken** | **String**|  | [optional] 

### Return type

[**UsersLoginGet200Response**](UsersLoginGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

