# openapi.api.AchievementsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://yycscan-backend.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**achievementsGetAchievementsByUserIdGet**](AchievementsApi.md#achievementsgetachievementsbyuseridget) | **GET** /Achievements/GetAchievementsByUserId | 


# **achievementsGetAchievementsByUserIdGet**
> achievementsGetAchievementsByUserIdGet(userId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AchievementsApi();
final userId = userId_example; // String | 

try {
    api_instance.achievementsGetAchievementsByUserIdGet(userId);
} catch (e) {
    print('Exception when calling AchievementsApi->achievementsGetAchievementsByUserIdGet: $e\n');
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

