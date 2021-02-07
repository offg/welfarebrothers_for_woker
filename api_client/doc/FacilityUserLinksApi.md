# welfarebrothers_for_worker_api_client.api.FacilityUserLinksApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**facilityUserLinksCreate**](FacilityUserLinksApi.md#facilityUserLinksCreate) | **POST** /facility_user_links | 
[**facilityUserLinksDelete**](FacilityUserLinksApi.md#facilityUserLinksDelete) | **DELETE** /facility_user_links/{id} | 
[**facilityUserLinksList**](FacilityUserLinksApi.md#facilityUserLinksList) | **GET** /facility_user_links | 
[**facilityUserLinksPartialUpdate**](FacilityUserLinksApi.md#facilityUserLinksPartialUpdate) | **PATCH** /facility_user_links/{id} | 
[**facilityUserLinksRead**](FacilityUserLinksApi.md#facilityUserLinksRead) | **GET** /facility_user_links/{id} | 
[**facilityUserLinksUpdate**](FacilityUserLinksApi.md#facilityUserLinksUpdate) | **PUT** /facility_user_links/{id} | 


# **facilityUserLinksCreate**
> FacilityUserLink facilityUserLinksCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinksApi();
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.facilityUserLinksCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinksApi->facilityUserLinksCreate: $e\n');
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

# **facilityUserLinksDelete**
> facilityUserLinksDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinksApi();
final id = 56; // int | A unique integer value identifying this facility user link.

try { 
    api_instance.facilityUserLinksDelete(id);
} catch (e) {
    print('Exception when calling FacilityUserLinksApi->facilityUserLinksDelete: $e\n');
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

# **facilityUserLinksList**
> List<FacilityUserLink> facilityUserLinksList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinksApi();

try { 
    final result = api_instance.facilityUserLinksList();
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinksApi->facilityUserLinksList: $e\n');
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

# **facilityUserLinksPartialUpdate**
> FacilityUserLink facilityUserLinksPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinksApi();
final id = 56; // int | A unique integer value identifying this facility user link.
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.facilityUserLinksPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinksApi->facilityUserLinksPartialUpdate: $e\n');
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

# **facilityUserLinksRead**
> FacilityUserLink facilityUserLinksRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinksApi();
final id = 56; // int | A unique integer value identifying this facility user link.

try { 
    final result = api_instance.facilityUserLinksRead(id);
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinksApi->facilityUserLinksRead: $e\n');
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

# **facilityUserLinksUpdate**
> FacilityUserLink facilityUserLinksUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = FacilityUserLinksApi();
final id = 56; // int | A unique integer value identifying this facility user link.
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.facilityUserLinksUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling FacilityUserLinksApi->facilityUserLinksUpdate: $e\n');
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

