# welfarebrothers_for_worker_api_client.api.UsersApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersCreate**](UsersApi.md#usersCreate) | **POST** /users | 
[**usersDelete**](UsersApi.md#usersDelete) | **DELETE** /users/{id} | 
[**usersPartialUpdate**](UsersApi.md#usersPartialUpdate) | **PATCH** /users/{id} | 
[**usersProfileCreate**](UsersApi.md#usersProfileCreate) | **POST** /users/{user_pk}/profile/ | 
[**usersProfileDelete**](UsersApi.md#usersProfileDelete) | **DELETE** /users/{user_pk}/profile/{id}/ | 
[**usersProfileList**](UsersApi.md#usersProfileList) | **GET** /users/{user_pk}/profile/ | 
[**usersProfilePartialUpdate**](UsersApi.md#usersProfilePartialUpdate) | **PATCH** /users/{user_pk}/profile/{id}/ | 
[**usersProfileUpdate**](UsersApi.md#usersProfileUpdate) | **PUT** /users/{user_pk}/profile/{id}/ | 
[**usersRead**](UsersApi.md#usersRead) | **GET** /users/{id} | 
[**usersUpdate**](UsersApi.md#usersUpdate) | **PUT** /users/{id} | 


# **usersCreate**
> User usersCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.usersCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersCreate: $e\n');
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

# **usersDelete**
> usersDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.

try { 
    api_instance.usersDelete(id);
} catch (e) {
    print('Exception when calling UsersApi->usersDelete: $e\n');
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

# **usersPartialUpdate**
> User usersPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.usersPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersPartialUpdate: $e\n');
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

# **usersProfileCreate**
> WelfarebrothersUserProfile usersProfileCreate(userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.usersProfileCreate(userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfileCreate: $e\n');
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

# **usersProfileDelete**
> usersProfileDelete(id, userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 

try { 
    api_instance.usersProfileDelete(id, userPk);
} catch (e) {
    print('Exception when calling UsersApi->usersProfileDelete: $e\n');
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

# **usersProfileList**
> List<WelfarebrothersUserProfile> usersProfileList(userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final userPk = userPk_example; // String | 

try { 
    final result = api_instance.usersProfileList(userPk);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfileList: $e\n');
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

# **usersProfilePartialUpdate**
> WelfarebrothersUserProfile usersProfilePartialUpdate(id, userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.usersProfilePartialUpdate(id, userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfilePartialUpdate: $e\n');
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

# **usersProfileUpdate**
> WelfarebrothersUserProfile usersProfileUpdate(id, userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.usersProfileUpdate(id, userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfileUpdate: $e\n');
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

# **usersRead**
> User usersRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.

try { 
    final result = api_instance.usersRead(id);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersRead: $e\n');
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

# **usersUpdate**
> User usersUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.usersUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersUpdate: $e\n');
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

