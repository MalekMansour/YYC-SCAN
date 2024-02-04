# openapi.api.CouponsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://yycscan-backend.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**couponsGetCounponDetailGet**](CouponsApi.md#couponsgetcounpondetailget) | **GET** /Coupons/GetCounponDetail | 
[**couponsGetCouponsByUserIdGet**](CouponsApi.md#couponsgetcouponsbyuseridget) | **GET** /Coupons/GetCouponsByUserId | 


# **couponsGetCounponDetailGet**
> couponsGetCounponDetailGet(couponId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponsApi();
final couponId = 56; // int | 

try {
    api_instance.couponsGetCounponDetailGet(couponId);
} catch (e) {
    print('Exception when calling CouponsApi->couponsGetCounponDetailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **couponsGetCouponsByUserIdGet**
> couponsGetCouponsByUserIdGet(userId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponsApi();
final userId = userId_example; // String | 

try {
    api_instance.couponsGetCouponsByUserIdGet(userId);
} catch (e) {
    print('Exception when calling CouponsApi->couponsGetCouponsByUserIdGet: $e\n');
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

