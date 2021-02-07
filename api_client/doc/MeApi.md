# welfarebrothers_for_worker_api_client.api.MeApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**meCreate**](MeApi.md#meCreate) | **POST** /me | 
[**meDelete**](MeApi.md#meDelete) | **DELETE** /me/{id} | 
[**mePartialUpdate**](MeApi.md#mePartialUpdate) | **PATCH** /me/{id} | 
[**meProfileCreate**](MeApi.md#meProfileCreate) | **POST** /me/{user_pk}/profile | 
[**meProfileDelete**](MeApi.md#meProfileDelete) | **DELETE** /me/{user_pk}/profile/{id} | 
[**meProfileList**](MeApi.md#meProfileList) | **GET** /me/{user_pk}/profile | 
[**meProfilePartialUpdate**](MeApi.md#meProfilePartialUpdate) | **PATCH** /me/{user_pk}/profile/{id} | 
[**meProfileRead**](MeApi.md#meProfileRead) | **GET** /me/{user_pk}/profile/{id} | 
[**meProfileUpdate**](MeApi.md#meProfileUpdate) | **PUT** /me/{user_pk}/profile/{id} | 
[**meRead**](MeApi.md#meRead) | **GET** /me/{id} | 
[**meUpdate**](MeApi.md#meUpdate) | **PUT** /me/{id} | 


# **meCreate**
> User meCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.meCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->meCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**UserForWrite**](UserForWrite.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meDelete**
> meDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.

try { 
    api_instance.meDelete(id);
} catch (e) {
    print('Exception when calling MeApi->meDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this welfarebrothers_user. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mePartialUpdate**
> User mePartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.mePartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->mePartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this welfarebrothers_user. | 
 **data** | [**UserForWrite**](UserForWrite.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meProfileCreate**
> WelfarebrothersUserProfile meProfileCreate(userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.meProfileCreate(userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->meProfileCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 
 **data** | [**WelfarebrothersUserProfileForWrite**](WelfarebrothersUserProfileForWrite.md)|  | 

### Return type

[**WelfarebrothersUserProfile**](WelfarebrothersUserProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meProfileDelete**
> meProfileDelete(id, userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 

try { 
    api_instance.meProfileDelete(id, userPk);
} catch (e) {
    print('Exception when calling MeApi->meProfileDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this welfarebrothers user profile. | 
 **userPk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meProfileList**
> List<WelfarebrothersUserProfile> meProfileList(userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final userPk = userPk_example; // String | 

try { 
    final result = api_instance.meProfileList(userPk);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->meProfileList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 

### Return type

[**List<WelfarebrothersUserProfile>**](WelfarebrothersUserProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meProfilePartialUpdate**
> WelfarebrothersUserProfile meProfilePartialUpdate(id, userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.meProfilePartialUpdate(id, userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->meProfilePartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this welfarebrothers user profile. | 
 **userPk** | **String**|  | 
 **data** | [**WelfarebrothersUserProfileForWrite**](WelfarebrothersUserProfileForWrite.md)|  | 

### Return type

[**WelfarebrothersUserProfile**](WelfarebrothersUserProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meProfileRead**
> WelfarebrothersUserProfile meProfileRead(id, userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 

try { 
    final result = api_instance.meProfileRead(id, userPk);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->meProfileRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this welfarebrothers user profile. | 
 **userPk** | **String**|  | 

### Return type

[**WelfarebrothersUserProfile**](WelfarebrothersUserProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meProfileUpdate**
> WelfarebrothersUserProfile meProfileUpdate(id, userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.meProfileUpdate(id, userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->meProfileUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this welfarebrothers user profile. | 
 **userPk** | **String**|  | 
 **data** | [**WelfarebrothersUserProfileForWrite**](WelfarebrothersUserProfileForWrite.md)|  | 

### Return type

[**WelfarebrothersUserProfile**](WelfarebrothersUserProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meRead**
> User meRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.

try { 
    final result = api_instance.meRead(id);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->meRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this welfarebrothers_user. | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meUpdate**
> User meUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = MeApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.meUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling MeApi->meUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this welfarebrothers_user. | 
 **data** | [**UserForWrite**](UserForWrite.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

