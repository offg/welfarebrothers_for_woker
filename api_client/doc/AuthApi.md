# welfarebrothers_for_worker_api_client.api.AuthApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authFacilityLinkingFinishFlowCreate**](AuthApi.md#authFacilityLinkingFinishFlowCreate) | **POST** /auth/facility_linking/_finish_flow | 
[**authFacilityLinkingGreetCreate**](AuthApi.md#authFacilityLinkingGreetCreate) | **POST** /auth/facility_linking/_greet | 
[**authFacilityLinkingList**](AuthApi.md#authFacilityLinkingList) | **GET** /auth/facility_linking | 
[**authFacilityLinkingStartFlowCreate**](AuthApi.md#authFacilityLinkingStartFlowCreate) | **POST** /auth/facility_linking/_start_flow | 
[**authFacilityLinkingVerifyCreate**](AuthApi.md#authFacilityLinkingVerifyCreate) | **POST** /auth/facility_linking/_verify | 
[**authTokenCreate**](AuthApi.md#authTokenCreate) | **POST** /auth/token | 
[**authTokenRefreshCreate**](AuthApi.md#authTokenRefreshCreate) | **POST** /auth/token/refresh/ | 


# **authFacilityLinkingFinishFlowCreate**
> authFacilityLinkingFinishFlowCreate(facilityUserLinkId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityUserLinkId = facilityUserLinkId_example; // String | 

try { 
    api_instance.authFacilityLinkingFinishFlowCreate(facilityUserLinkId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingFinishFlowCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityUserLinkId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacilityLinkingGreetCreate**
> authFacilityLinkingGreetCreate(facilityUserLinkId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityUserLinkId = facilityUserLinkId_example; // String | 

try { 
    api_instance.authFacilityLinkingGreetCreate(facilityUserLinkId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingGreetCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityUserLinkId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacilityLinkingList**
> authFacilityLinkingList(facilityUserLinkId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityUserLinkId = facilityUserLinkId_example; // String | 

try { 
    api_instance.authFacilityLinkingList(facilityUserLinkId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityUserLinkId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacilityLinkingStartFlowCreate**
> authFacilityLinkingStartFlowCreate(facilityUserLinkId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityUserLinkId = facilityUserLinkId_example; // String | 

try { 
    api_instance.authFacilityLinkingStartFlowCreate(facilityUserLinkId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingStartFlowCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityUserLinkId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacilityLinkingVerifyCreate**
> authFacilityLinkingVerifyCreate(facilityUserLinkId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityUserLinkId = facilityUserLinkId_example; // String | 

try { 
    api_instance.authFacilityLinkingVerifyCreate(facilityUserLinkId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingVerifyCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityUserLinkId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTokenCreate**
> WelfarebrothersTokenClaims authTokenCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final data = WelfarebrothersTokenClaimsForWrite(); // WelfarebrothersTokenClaimsForWrite | 

try { 
    final result = api_instance.authTokenCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authTokenCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**WelfarebrothersTokenClaimsForWrite**](WelfarebrothersTokenClaimsForWrite.md)|  | 

### Return type

[**WelfarebrothersTokenClaims**](WelfarebrothersTokenClaims.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTokenRefreshCreate**
> TokenRefresh authTokenRefreshCreate(data)



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final data = TokenRefresh(); // TokenRefresh | 

try { 
    final result = api_instance.authTokenRefreshCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authTokenRefreshCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TokenRefresh**](TokenRefresh.md)|  | 

### Return type

[**TokenRefresh**](TokenRefresh.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

