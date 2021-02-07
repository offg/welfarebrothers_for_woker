# welfarebrothers_for_worker_api_client.api.FacilityUserLinkTypesApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**facilityUserLinkTypesCreate**](FacilityUserLinkTypesApi.md#facilityUserLinkTypesCreate) | **POST** /facility_user_link_types | 
[**facilityUserLinkTypesDelete**](FacilityUserLinkTypesApi.md#facilityUserLinkTypesDelete) | **DELETE** /facility_user_link_types/{id} | 
[**facilityUserLinkTypesList**](FacilityUserLinkTypesApi.md#facilityUserLinkTypesList) | **GET** /facility_user_link_types | 
[**facilityUserLinkTypesPartialUpdate**](FacilityUserLinkTypesApi.md#facilityUserLinkTypesPartialUpdate) | **PATCH** /facility_user_link_types/{id} | 
[**facilityUserLinkTypesRead**](FacilityUserLinkTypesApi.md#facilityUserLinkTypesRead) | **GET** /facility_user_link_types/{id} | 
[**facilityUserLinkTypesUpdate**](FacilityUserLinkTypesApi.md#facilityUserLinkTypesUpdate) | **PUT** /facility_user_link_types/{id} | 


# **facilityUserLinkTypesCreate**
> FacilityUserLink facilityUserLinkTypesCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinkTypesApi();
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.facilityUserLinkTypesCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinkTypesApi->facilityUserLinkTypesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FacilityUserLinkForWrite**](FacilityUserLinkForWrite.md)|  | 

### Return type

[**FacilityUserLink**](FacilityUserLink.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilityUserLinkTypesDelete**
> facilityUserLinkTypesDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinkTypesApi();
final id = 56; // int | A unique integer value identifying this facility user link.

try { 
    api_instance.facilityUserLinkTypesDelete(id);
} catch (e) {
    print('Exception when calling FacilityUserLinkTypesApi->facilityUserLinkTypesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this facility user link. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilityUserLinkTypesList**
> List<FacilityUserLink> facilityUserLinkTypesList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinkTypesApi();

try { 
    final result = api_instance.facilityUserLinkTypesList();
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinkTypesApi->facilityUserLinkTypesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FacilityUserLink>**](FacilityUserLink.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilityUserLinkTypesPartialUpdate**
> FacilityUserLink facilityUserLinkTypesPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinkTypesApi();
final id = 56; // int | A unique integer value identifying this facility user link.
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.facilityUserLinkTypesPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinkTypesApi->facilityUserLinkTypesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this facility user link. | 
 **data** | [**FacilityUserLinkForWrite**](FacilityUserLinkForWrite.md)|  | 

### Return type

[**FacilityUserLink**](FacilityUserLink.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilityUserLinkTypesRead**
> FacilityUserLink facilityUserLinkTypesRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinkTypesApi();
final id = 56; // int | A unique integer value identifying this facility user link.

try { 
    final result = api_instance.facilityUserLinkTypesRead(id);
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinkTypesApi->facilityUserLinkTypesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this facility user link. | 

### Return type

[**FacilityUserLink**](FacilityUserLink.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilityUserLinkTypesUpdate**
> FacilityUserLink facilityUserLinkTypesUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinkTypesApi();
final id = 56; // int | A unique integer value identifying this facility user link.
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.facilityUserLinkTypesUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinkTypesApi->facilityUserLinkTypesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this facility user link. | 
 **data** | [**FacilityUserLinkForWrite**](FacilityUserLinkForWrite.md)|  | 

### Return type

[**FacilityUserLink**](FacilityUserLink.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

