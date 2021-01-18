# welfarebrothers_for_worker_api_client.api.FacilitiesApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

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
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this facility.

try { 
    api_instance.facilitiesDelete(id);
} catch (e) {
    print('Exception when calling FacilitiesApi->facilitiesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| A UUID string identifying this facility. | 

### Return type

void (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facilitiesList**
> List<Facility> facilitiesList(prefecture, city, careServiceGroup, careServiceGroupCategory, keywordContains)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = FacilitiesApi();
final prefecture = prefecture_example; // String | 
final city = city_example; // String | 
final careServiceGroup = careServiceGroup_example; // String | 
final careServiceGroupCategory = careServiceGroupCategory_example; // String | 
final keywordContains = keywordContains_example; // String | 

try { 
    final result = api_instance.facilitiesList(prefecture, city, careServiceGroup, careServiceGroupCategory, keywordContains);
    print(result);
} catch (e) {
    print('Exception when calling FacilitiesApi->facilitiesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefecture** | **String**|  | [optional] 
 **city** | **String**|  | [optional] 
 **careServiceGroup** | **String**|  | [optional] 
 **careServiceGroupCategory** | **String**|  | [optional] 
 **keywordContains** | **String**|  | [optional] 

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
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this facility.
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
 **id** | [**String**](.md)| A UUID string identifying this facility. | 
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
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this facility.

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
 **id** | [**String**](.md)| A UUID string identifying this facility. | 

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
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this facility.
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
 **id** | [**String**](.md)| A UUID string identifying this facility. | 
 **data** | [**FacilityForWrite**](FacilityForWrite.md)|  | 

### Return type

[**Facility**](Facility.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

