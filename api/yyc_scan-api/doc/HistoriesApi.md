# openapi.api.HistoriesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://yycscan-backend.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**historiesGet5RecentVisitedGet**](HistoriesApi.md#historiesget5recentvisitedget) | **GET** /Histories/Get5RecentVisited | 


# **historiesGet5RecentVisitedGet**
> historiesGet5RecentVisitedGet(userId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HistoriesApi();
final userId = userId_example; // String | 

try {
    api_instance.historiesGet5RecentVisitedGet(userId);
} catch (e) {
    print('Exception when calling HistoriesApi->historiesGet5RecentVisitedGet: $e\n');
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

