# welfarebrothers_for_worker_api_client.api.AuthApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authFacilityLinkingCreate**](AuthApi.md#authFacilityLinkingCreate) | **POST** /auth/facility_linking | 
[**authFacilityLinkingFinishCreate**](AuthApi.md#authFacilityLinkingFinishCreate) | **POST** /auth/facility_linking/_finish | 
[**authFacilityLinkingGreetCreate**](AuthApi.md#authFacilityLinkingGreetCreate) | **POST** /auth/facility_linking/_greet | 
[**authFacilityLinkingStartFlowCreate**](AuthApi.md#authFacilityLinkingStartFlowCreate) | **POST** /auth/facility_linking/_start_flow | 
[**authFacilityLinkingVerifyCreate**](AuthApi.md#authFacilityLinkingVerifyCreate) | **POST** /auth/facility_linking/_verify | 
[**authTokenCreate**](AuthApi.md#authTokenCreate) | **POST** /auth/token | 
[**authTokenRefreshCreate**](AuthApi.md#authTokenRefreshCreate) | **POST** /auth/token/refresh/ | 


# **authFacilityLinkingCreate**
> authFacilityLinkingCreate(facilityId, userId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityId = facilityId_example; // String | facility id for linking
final userId = userId_example; // String | 

try { 
    api_instance.authFacilityLinkingCreate(facilityId, userId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityId** | **String**| facility id for linking | [optional] 
 **userId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacilityLinkingFinishCreate**
> authFacilityLinkingFinishCreate(facilityId, userId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityId = facilityId_example; // String | facility id for linking
final userId = userId_example; // String | 

try { 
    api_instance.authFacilityLinkingFinishCreate(facilityId, userId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingFinishCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityId** | **String**| facility id for linking | [optional] 
 **userId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacilityLinkingGreetCreate**
> authFacilityLinkingGreetCreate(facilityId, userId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityId = facilityId_example; // String | facility id for linking
final userId = userId_example; // String | 

try { 
    api_instance.authFacilityLinkingGreetCreate(facilityId, userId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingGreetCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityId** | **String**| facility id for linking | [optional] 
 **userId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacilityLinkingStartFlowCreate**
> authFacilityLinkingStartFlowCreate(facilityId, userId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityId = facilityId_example; // String | facility id for linking
final userId = userId_example; // String | 

try { 
    api_instance.authFacilityLinkingStartFlowCreate(facilityId, userId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingStartFlowCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityId** | **String**| facility id for linking | [optional] 
 **userId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacilityLinkingVerifyCreate**
> authFacilityLinkingVerifyCreate(facilityId, userId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final facilityId = facilityId_example; // String | facility id for linking
final userId = userId_example; // String | 

try { 
    api_instance.authFacilityLinkingVerifyCreate(facilityId, userId);
} catch (e) {
    print('Exception when calling AuthApi->authFacilityLinkingVerifyCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityId** | **String**| facility id for linking | [optional] 
 **userId** | **String**|  | [optional] 

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

