# welfarebrothers_for_worker_api_client.api.CareServiceCategoriesApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**careServiceCategoriesCreate**](CareServiceCategoriesApi.md#careServiceCategoriesCreate) | **POST** /care_service_categories | 
[**careServiceCategoriesDelete**](CareServiceCategoriesApi.md#careServiceCategoriesDelete) | **DELETE** /care_service_categories/{id} | 
[**careServiceCategoriesGroupsCreate**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsCreate) | **POST** /care_service_categories/{category_pk}/groups | 
[**careServiceCategoriesGroupsDelete**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsDelete) | **DELETE** /care_service_categories/{category_pk}/groups/{id} | 
[**careServiceCategoriesGroupsList**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsList) | **GET** /care_service_categories/{category_pk}/groups | 
[**careServiceCategoriesGroupsPartialUpdate**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsPartialUpdate) | **PATCH** /care_service_categories/{category_pk}/groups/{id} | 
[**careServiceCategoriesGroupsRead**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsRead) | **GET** /care_service_categories/{category_pk}/groups/{id} | 
[**careServiceCategoriesGroupsServicesCreate**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsServicesCreate) | **POST** /care_service_categories/{category_pk}/groups/{group_pk}/services | 
[**careServiceCategoriesGroupsServicesDelete**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsServicesDelete) | **DELETE** /care_service_categories/{category_pk}/groups/{group_pk}/services/{id} | 
[**careServiceCategoriesGroupsServicesList**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsServicesList) | **GET** /care_service_categories/{category_pk}/groups/{group_pk}/services | 
[**careServiceCategoriesGroupsServicesPartialUpdate**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsServicesPartialUpdate) | **PATCH** /care_service_categories/{category_pk}/groups/{group_pk}/services/{id} | 
[**careServiceCategoriesGroupsServicesRead**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsServicesRead) | **GET** /care_service_categories/{category_pk}/groups/{group_pk}/services/{id} | 
[**careServiceCategoriesGroupsServicesUpdate**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsServicesUpdate) | **PUT** /care_service_categories/{category_pk}/groups/{group_pk}/services/{id} | 
[**careServiceCategoriesGroupsUpdate**](CareServiceCategoriesApi.md#careServiceCategoriesGroupsUpdate) | **PUT** /care_service_categories/{category_pk}/groups/{id} | 
[**careServiceCategoriesList**](CareServiceCategoriesApi.md#careServiceCategoriesList) | **GET** /care_service_categories | 
[**careServiceCategoriesPartialUpdate**](CareServiceCategoriesApi.md#careServiceCategoriesPartialUpdate) | **PATCH** /care_service_categories/{id} | 
[**careServiceCategoriesRead**](CareServiceCategoriesApi.md#careServiceCategoriesRead) | **GET** /care_service_categories/{id} | 
[**careServiceCategoriesUpdate**](CareServiceCategoriesApi.md#careServiceCategoriesUpdate) | **PUT** /care_service_categories/{id} | 


# **careServiceCategoriesCreate**
> CareServiceCategory careServiceCategoriesCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final data = CareServiceCategoryForWrite(); // CareServiceCategoryForWrite | 

try { 
    final result = api_instance.careServiceCategoriesCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**CareServiceCategoryForWrite**](CareServiceCategoryForWrite.md)|  | 

### Return type

[**CareServiceCategory**](CareServiceCategory.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesDelete**
> careServiceCategoriesDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final id = id_example; // String | A unique value identifying this care service category.

try { 
    api_instance.careServiceCategoriesDelete(id);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this care service category. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsCreate**
> CareServiceGroup careServiceCategoriesGroupsCreate(categoryPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final data = CareServiceGroupForWrite(); // CareServiceGroupForWrite | 

try { 
    final result = api_instance.careServiceCategoriesGroupsCreate(categoryPk, data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **data** | [**CareServiceGroupForWrite**](CareServiceGroupForWrite.md)|  | 

### Return type

[**CareServiceGroup**](CareServiceGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsDelete**
> careServiceCategoriesGroupsDelete(categoryPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final id = id_example; // String | A unique value identifying this care service group.

try { 
    api_instance.careServiceCategoriesGroupsDelete(categoryPk, id);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **id** | **String**| A unique value identifying this care service group. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsList**
> List<CareServiceGroup> careServiceCategoriesGroupsList(categoryPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 

try { 
    final result = api_instance.careServiceCategoriesGroupsList(categoryPk);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 

### Return type

[**List<CareServiceGroup>**](CareServiceGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsPartialUpdate**
> CareServiceGroup careServiceCategoriesGroupsPartialUpdate(categoryPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final id = id_example; // String | A unique value identifying this care service group.
final data = CareServiceGroupForWrite(); // CareServiceGroupForWrite | 

try { 
    final result = api_instance.careServiceCategoriesGroupsPartialUpdate(categoryPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **id** | **String**| A unique value identifying this care service group. | 
 **data** | [**CareServiceGroupForWrite**](CareServiceGroupForWrite.md)|  | 

### Return type

[**CareServiceGroup**](CareServiceGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsRead**
> CareServiceGroup careServiceCategoriesGroupsRead(categoryPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final id = id_example; // String | A unique value identifying this care service group.

try { 
    final result = api_instance.careServiceCategoriesGroupsRead(categoryPk, id);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **id** | **String**| A unique value identifying this care service group. | 

### Return type

[**CareServiceGroup**](CareServiceGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsServicesCreate**
> CareService careServiceCategoriesGroupsServicesCreate(categoryPk, groupPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final groupPk = groupPk_example; // String | 
final data = CareServiceForWrite(); // CareServiceForWrite | 

try { 
    final result = api_instance.careServiceCategoriesGroupsServicesCreate(categoryPk, groupPk, data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsServicesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **groupPk** | **String**|  | 
 **data** | [**CareServiceForWrite**](CareServiceForWrite.md)|  | 

### Return type

[**CareService**](CareService.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsServicesDelete**
> careServiceCategoriesGroupsServicesDelete(categoryPk, groupPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final groupPk = groupPk_example; // String | 
final id = id_example; // String | A unique value identifying this care service.

try { 
    api_instance.careServiceCategoriesGroupsServicesDelete(categoryPk, groupPk, id);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsServicesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **groupPk** | **String**|  | 
 **id** | **String**| A unique value identifying this care service. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsServicesList**
> List<CareService> careServiceCategoriesGroupsServicesList(categoryPk, groupPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final groupPk = groupPk_example; // String | 

try { 
    final result = api_instance.careServiceCategoriesGroupsServicesList(categoryPk, groupPk);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsServicesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **groupPk** | **String**|  | 

### Return type

[**List<CareService>**](CareService.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsServicesPartialUpdate**
> CareService careServiceCategoriesGroupsServicesPartialUpdate(categoryPk, groupPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final groupPk = groupPk_example; // String | 
final id = id_example; // String | A unique value identifying this care service.
final data = CareServiceForWrite(); // CareServiceForWrite | 

try { 
    final result = api_instance.careServiceCategoriesGroupsServicesPartialUpdate(categoryPk, groupPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsServicesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **groupPk** | **String**|  | 
 **id** | **String**| A unique value identifying this care service. | 
 **data** | [**CareServiceForWrite**](CareServiceForWrite.md)|  | 

### Return type

[**CareService**](CareService.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsServicesRead**
> CareService careServiceCategoriesGroupsServicesRead(categoryPk, groupPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final groupPk = groupPk_example; // String | 
final id = id_example; // String | A unique value identifying this care service.

try { 
    final result = api_instance.careServiceCategoriesGroupsServicesRead(categoryPk, groupPk, id);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsServicesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **groupPk** | **String**|  | 
 **id** | **String**| A unique value identifying this care service. | 

### Return type

[**CareService**](CareService.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsServicesUpdate**
> CareService careServiceCategoriesGroupsServicesUpdate(categoryPk, groupPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final groupPk = groupPk_example; // String | 
final id = id_example; // String | A unique value identifying this care service.
final data = CareServiceForWrite(); // CareServiceForWrite | 

try { 
    final result = api_instance.careServiceCategoriesGroupsServicesUpdate(categoryPk, groupPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsServicesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **groupPk** | **String**|  | 
 **id** | **String**| A unique value identifying this care service. | 
 **data** | [**CareServiceForWrite**](CareServiceForWrite.md)|  | 

### Return type

[**CareService**](CareService.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesGroupsUpdate**
> CareServiceGroup careServiceCategoriesGroupsUpdate(categoryPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final categoryPk = categoryPk_example; // String | 
final id = id_example; // String | A unique value identifying this care service group.
final data = CareServiceGroupForWrite(); // CareServiceGroupForWrite | 

try { 
    final result = api_instance.careServiceCategoriesGroupsUpdate(categoryPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesGroupsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryPk** | **String**|  | 
 **id** | **String**| A unique value identifying this care service group. | 
 **data** | [**CareServiceGroupForWrite**](CareServiceGroupForWrite.md)|  | 

### Return type

[**CareServiceGroup**](CareServiceGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesList**
> List<CareServiceCategory> careServiceCategoriesList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();

try { 
    final result = api_instance.careServiceCategoriesList();
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CareServiceCategory>**](CareServiceCategory.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesPartialUpdate**
> CareServiceCategory careServiceCategoriesPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final id = id_example; // String | A unique value identifying this care service category.
final data = CareServiceCategoryForWrite(); // CareServiceCategoryForWrite | 

try { 
    final result = api_instance.careServiceCategoriesPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this care service category. | 
 **data** | [**CareServiceCategoryForWrite**](CareServiceCategoryForWrite.md)|  | 

### Return type

[**CareServiceCategory**](CareServiceCategory.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesRead**
> CareServiceCategory careServiceCategoriesRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final id = id_example; // String | A unique value identifying this care service category.

try { 
    final result = api_instance.careServiceCategoriesRead(id);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this care service category. | 

### Return type

[**CareServiceCategory**](CareServiceCategory.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **careServiceCategoriesUpdate**
> CareServiceCategory careServiceCategoriesUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = CareServiceCategoriesApi();
final id = id_example; // String | A unique value identifying this care service category.
final data = CareServiceCategoryForWrite(); // CareServiceCategoryForWrite | 

try { 
    final result = api_instance.careServiceCategoriesUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling CareServiceCategoriesApi->careServiceCategoriesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this care service category. | 
 **data** | [**CareServiceCategoryForWrite**](CareServiceCategoryForWrite.md)|  | 

### Return type

[**CareServiceCategory**](CareServiceCategory.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

