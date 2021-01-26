# welfarebrothers_for_worker_api_client.api.PrefecturesApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**prefecturesCitiesCreate**](PrefecturesApi.md#prefecturesCitiesCreate) | **POST** /prefectures/{prefecture_pk}/cities | 
[**prefecturesCitiesDelete**](PrefecturesApi.md#prefecturesCitiesDelete) | **DELETE** /prefectures/{prefecture_pk}/cities/{id} | 
[**prefecturesCitiesList**](PrefecturesApi.md#prefecturesCitiesList) | **GET** /prefectures/{prefecture_pk}/cities | 
[**prefecturesCitiesPartialUpdate**](PrefecturesApi.md#prefecturesCitiesPartialUpdate) | **PATCH** /prefectures/{prefecture_pk}/cities/{id} | 
[**prefecturesCitiesRead**](PrefecturesApi.md#prefecturesCitiesRead) | **GET** /prefectures/{prefecture_pk}/cities/{id} | 
[**prefecturesCitiesUpdate**](PrefecturesApi.md#prefecturesCitiesUpdate) | **PUT** /prefectures/{prefecture_pk}/cities/{id} | 
[**prefecturesCreate**](PrefecturesApi.md#prefecturesCreate) | **POST** /prefectures | 
[**prefecturesDelete**](PrefecturesApi.md#prefecturesDelete) | **DELETE** /prefectures/{id} | 
[**prefecturesList**](PrefecturesApi.md#prefecturesList) | **GET** /prefectures | 
[**prefecturesPartialUpdate**](PrefecturesApi.md#prefecturesPartialUpdate) | **PATCH** /prefectures/{id} | 
[**prefecturesRead**](PrefecturesApi.md#prefecturesRead) | **GET** /prefectures/{id} | 
[**prefecturesUpdate**](PrefecturesApi.md#prefecturesUpdate) | **PUT** /prefectures/{id} | 


# **prefecturesCitiesCreate**
> City prefecturesCitiesCreate(prefecturePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = PrefecturesApi();
final prefecturePk = prefecturePk_example; // String | 
final data = CityForWrite(); // CityForWrite | 

try { 
    final result = api_instance.prefecturesCitiesCreate(prefecturePk, data);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesCitiesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefecturePk** | **String**|  | 
 **data** | [**CityForWrite**](CityForWrite.md)|  | 

### Return type

[**City**](City.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesCitiesDelete**
> prefecturesCitiesDelete(id, prefecturePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = PrefecturesApi();
final id = id_example; // String | A unique value identifying this city.
final prefecturePk = prefecturePk_example; // String | 

try { 
    api_instance.prefecturesCitiesDelete(id, prefecturePk);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesCitiesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this city. | 
 **prefecturePk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesCitiesList**
> List<City> prefecturesCitiesList(prefecturePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = PrefecturesApi();
final prefecturePk = prefecturePk_example; // String | 

try { 
    final result = api_instance.prefecturesCitiesList(prefecturePk);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesCitiesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefecturePk** | **String**|  | 

### Return type

[**List<City>**](City.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesCitiesPartialUpdate**
> City prefecturesCitiesPartialUpdate(id, prefecturePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = PrefecturesApi();
final id = id_example; // String | A unique value identifying this city.
final prefecturePk = prefecturePk_example; // String | 
final data = CityForWrite(); // CityForWrite | 

try { 
    final result = api_instance.prefecturesCitiesPartialUpdate(id, prefecturePk, data);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesCitiesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this city. | 
 **prefecturePk** | **String**|  | 
 **data** | [**CityForWrite**](CityForWrite.md)|  | 

### Return type

[**City**](City.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesCitiesRead**
> City prefecturesCitiesRead(id, prefecturePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = PrefecturesApi();
final id = id_example; // String | A unique value identifying this city.
final prefecturePk = prefecturePk_example; // String | 

try { 
    final result = api_instance.prefecturesCitiesRead(id, prefecturePk);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesCitiesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this city. | 
 **prefecturePk** | **String**|  | 

### Return type

[**City**](City.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesCitiesUpdate**
> City prefecturesCitiesUpdate(id, prefecturePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = PrefecturesApi();
final id = id_example; // String | A unique value identifying this city.
final prefecturePk = prefecturePk_example; // String | 
final data = CityForWrite(); // CityForWrite | 

try { 
    final result = api_instance.prefecturesCitiesUpdate(id, prefecturePk, data);
    print(result);
} catch (e) {
    print('Exception when calling PrefecturesApi->prefecturesCitiesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this city. | 
 **prefecturePk** | **String**|  | 
 **data** | [**CityForWrite**](CityForWrite.md)|  | 

### Return type

[**City**](City.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesCreate**
> Prefecture prefecturesCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

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

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesDelete**
> prefecturesDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

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

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesList**
> List<Prefecture> prefecturesList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

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

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesPartialUpdate**
> Prefecture prefecturesPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

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

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesRead**
> Prefecture prefecturesRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

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

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefecturesUpdate**
> Prefecture prefecturesUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

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

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

