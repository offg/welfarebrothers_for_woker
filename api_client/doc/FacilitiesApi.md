# welfarebrothers_for_worker_api_client.api.FacilitiesApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://192.168.11.3:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**facilitiesCreate**](FacilitiesApi.md#facilitiesCreate) | **POST** /facilities/ | 
[**facilitiesDelete**](FacilitiesApi.md#facilitiesDelete) | **DELETE** /facilities/{id}/ | 
[**facilitiesList**](FacilitiesApi.md#facilitiesList) | **GET** /facilities/ | 
[**facilitiesPartialUpdate**](FacilitiesApi.md#facilitiesPartialUpdate) | **PATCH** /facilities/{id}/ | 
[**facilitiesRead**](FacilitiesApi.md#facilitiesRead) | **GET** /facilities/{id}/ | 
[**facilitiesUpdate**](FacilitiesApi.md#facilitiesUpdate) | **PUT** /facilities/{id}/ | 


# **facilitiesCreate**
> Facility facilitiesCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = FacilitiesApi();
final data = FacilityForWrite(); // FacilityForWrite | 

try { 
    final result = api_instance.facilitiesCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling FacilitiesApi->facilitiesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FacilityForWrite**](FacilityForWrite.md)|  | 

### Return type

[**Facility**](Facility.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilitiesDelete**
> facilitiesDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = FacilitiesApi();
final id = id_example; // String | A unique value identifying this facility.

try { 
    api_instance.facilitiesDelete(id);
} catch (e) {
    print('Exception when calling FacilitiesApi->facilitiesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this facility. | 

### Return type

void (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilitiesList**
> List<Facility> facilitiesList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = FacilitiesApi();

try { 
    final result = api_instance.facilitiesList();
    print(result);
} catch (e) {
    print('Exception when calling FacilitiesApi->facilitiesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Facility>**](Facility.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilitiesPartialUpdate**
> Facility facilitiesPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = FacilitiesApi();
final id = id_example; // String | A unique value identifying this facility.
final data = FacilityForWrite(); // FacilityForWrite | 

try { 
    final result = api_instance.facilitiesPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling FacilitiesApi->facilitiesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this facility. | 
 **data** | [**FacilityForWrite**](FacilityForWrite.md)|  | 

### Return type

[**Facility**](Facility.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilitiesRead**
> Facility facilitiesRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = FacilitiesApi();
final id = id_example; // String | A unique value identifying this facility.

try { 
    final result = api_instance.facilitiesRead(id);
    print(result);
} catch (e) {
    print('Exception when calling FacilitiesApi->facilitiesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this facility. | 

### Return type

[**Facility**](Facility.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilitiesUpdate**
> Facility facilitiesUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = FacilitiesApi();
final id = id_example; // String | A unique value identifying this facility.
final data = FacilityForWrite(); // FacilityForWrite | 

try { 
    final result = api_instance.facilitiesUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling FacilitiesApi->facilitiesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this facility. | 
 **data** | [**FacilityForWrite**](FacilityForWrite.md)|  | 

### Return type

[**Facility**](Facility.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

