# openapi.api.HomeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://yycscan-backend.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**homeGenerateQRCodeGet**](HomeApi.md#homegenerateqrcodeget) | **GET** /Home/GenerateQRCode | 


# **homeGenerateQRCodeGet**
> homeGenerateQRCodeGet(baseString)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HomeApi();
final baseString = baseString_example; // String | 

try {
    api_instance.homeGenerateQRCodeGet(baseString);
} catch (e) {
    print('Exception when calling HomeApi->homeGenerateQRCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseString** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

