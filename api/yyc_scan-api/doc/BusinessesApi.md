# openapi.api.BusinessesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://yycscan-backend.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**businessesGetAllBusinessesByBusinessTypeAndCategoryGet**](BusinessesApi.md#businessesgetallbusinessesbybusinesstypeandcategoryget) | **GET** /Businesses/GetAllBusinessesByBusinessTypeAndCategory | 
[**businessesGetAllBusinessesByBusinessTypeGet**](BusinessesApi.md#businessesgetallbusinessesbybusinesstypeget) | **GET** /Businesses/GetAllBusinessesByBusinessType | 
[**businessesGetAllBusinessesByCategoryGet**](BusinessesApi.md#businessesgetallbusinessesbycategoryget) | **GET** /Businesses/GetAllBusinessesByCategory | 
[**businessesGetAllBusinessesGet**](BusinessesApi.md#businessesgetallbusinessesget) | **GET** /Businesses/GetAllBusinesses | 
[**businessesGetBusinessDetailGet**](BusinessesApi.md#businessesgetbusinessdetailget) | **GET** /Businesses/GetBusinessDetail | 
[**businessesGetBusinessReviewsGet**](BusinessesApi.md#businessesgetbusinessreviewsget) | **GET** /Businesses/GetBusinessReviews | 
[**businessesGetBusinessesByActivityGet**](BusinessesApi.md#businessesgetbusinessesbyactivityget) | **GET** /Businesses/GetBusinessesByActivity | 
[**businessesGetBusinessesByGoodForGet**](BusinessesApi.md#businessesgetbusinessesbygoodforget) | **GET** /Businesses/GetBusinessesByGoodFor | 
[**businessesGetTop3BusinessesGet**](BusinessesApi.md#businessesgettop3businessesget) | **GET** /Businesses/GetTop3Businesses | 


# **businessesGetAllBusinessesByBusinessTypeAndCategoryGet**
> businessesGetAllBusinessesByBusinessTypeAndCategoryGet(businessType, category)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();
final businessType = 56; // int | 
final category = category_example; // String | 

try {
    api_instance.businessesGetAllBusinessesByBusinessTypeAndCategoryGet(businessType, category);
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetAllBusinessesByBusinessTypeAndCategoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessType** | **int**|  | [optional] 
 **category** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessesGetAllBusinessesByBusinessTypeGet**
> businessesGetAllBusinessesByBusinessTypeGet(businessType)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();
final businessType = 56; // int | 

try {
    api_instance.businessesGetAllBusinessesByBusinessTypeGet(businessType);
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetAllBusinessesByBusinessTypeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessType** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessesGetAllBusinessesByCategoryGet**
> businessesGetAllBusinessesByCategoryGet(category)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();
final category = category_example; // String | 

try {
    api_instance.businessesGetAllBusinessesByCategoryGet(category);
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetAllBusinessesByCategoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessesGetAllBusinessesGet**
> List<Business> businessesGetAllBusinessesGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();

try {
    final result = api_instance.businessesGetAllBusinessesGet();
    print(result);
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetAllBusinessesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Business>**](Business.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessesGetBusinessDetailGet**
> businessesGetBusinessDetailGet(businessId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();
final businessId = 56; // int | 

try {
    api_instance.businessesGetBusinessDetailGet(businessId);
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetBusinessDetailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessesGetBusinessReviewsGet**
> businessesGetBusinessReviewsGet(businessId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();
final businessId = 56; // int | 

try {
    api_instance.businessesGetBusinessReviewsGet(businessId);
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetBusinessReviewsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessesGetBusinessesByActivityGet**
> businessesGetBusinessesByActivityGet(activity)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();
final activity = activity_example; // String | 

try {
    api_instance.businessesGetBusinessesByActivityGet(activity);
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetBusinessesByActivityGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessesGetBusinessesByGoodForGet**
> businessesGetBusinessesByGoodForGet(goodfor)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();
final goodfor = goodfor_example; // String | 

try {
    api_instance.businessesGetBusinessesByGoodForGet(goodfor);
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetBusinessesByGoodForGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goodfor** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessesGetTop3BusinessesGet**
> businessesGetTop3BusinessesGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BusinessesApi();

try {
    api_instance.businessesGetTop3BusinessesGet();
} catch (e) {
    print('Exception when calling BusinessesApi->businessesGetTop3BusinessesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

