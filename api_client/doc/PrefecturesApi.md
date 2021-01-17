# welfarebrothers_for_worker_api_client.api.PrefecturesApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**prefecturesCreate**](PrefecturesApi.md#prefecturesCreate) | **POST** /prefectures/ | 
[**prefecturesDelete**](PrefecturesApi.md#prefecturesDelete) | **DELETE** /prefectures/{id}/ | 
[**prefecturesList**](PrefecturesApi.md#prefecturesList) | **GET** /prefectures/ | 
[**prefecturesPartialUpdate**](PrefecturesApi.md#prefecturesPartialUpdate) | **PATCH** /prefectures/{id}/ | 
[**prefecturesRead**](PrefecturesApi.md#prefecturesRead) | **GET** /prefectures/{id}/ | 
[**prefecturesUpdate**](PrefecturesApi.md#prefecturesUpdate) | **PUT** /prefectures/{id}/ | 


# **prefecturesCreate**
> Prefecture prefecturesCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = PrefecturesApi();
final data = PrefectureForWrite(); // PrefectureForWrite | 

try { 
    final result = api_instance.prefecturesCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**PrefectureForWrite**](PrefectureForWrite.md)|  | 

### Return type

[**Prefecture**](Prefecture.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesDelete**
> prefecturesDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = PrefecturesApi();
final id = id_example; // String | A unique value identifying this prefecture.

try { 
    api_instance.prefecturesDelete(id);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this prefecture. | 

### Return type

void (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesList**
> List<Prefecture> prefecturesList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = PrefecturesApi();

try { 
    final result = api_instance.prefecturesList();
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Prefecture>**](Prefecture.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesPartialUpdate**
> Prefecture prefecturesPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = PrefecturesApi();
final id = id_example; // String | A unique value identifying this prefecture.
final data = PrefectureForWrite(); // PrefectureForWrite | 

try { 
    final result = api_instance.prefecturesPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this prefecture. | 
 **data** | [**PrefectureForWrite**](PrefectureForWrite.md)|  | 

### Return type

[**Prefecture**](Prefecture.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesRead**
> Prefecture prefecturesRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = PrefecturesApi();
final id = id_example; // String | A unique value identifying this prefecture.

try { 
    final result = api_instance.prefecturesRead(id);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this prefecture. | 

### Return type

[**Prefecture**](Prefecture.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesUpdate**
> Prefecture prefecturesUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = PrefecturesApi();
final id = id_example; // String | A unique value identifying this prefecture.
final data = PrefectureForWrite(); // PrefectureForWrite | 

try { 
    final result = api_instance.prefecturesUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this prefecture. | 
 **data** | [**PrefectureForWrite**](PrefectureForWrite.md)|  | 

### Return type

[**Prefecture**](Prefecture.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

