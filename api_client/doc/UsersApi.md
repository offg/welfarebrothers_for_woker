# welfarebrothers_for_worker_api_client.api.UsersApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersList**](UsersApi.md#usersList) | **GET** /users/ | 
[**usersProfilesCreate**](UsersApi.md#usersProfilesCreate) | **POST** /users/{user_pk}/profiles/ | 
[**usersProfilesDelete**](UsersApi.md#usersProfilesDelete) | **DELETE** /users/{user_pk}/profiles/{id}/ | 
[**usersProfilesList**](UsersApi.md#usersProfilesList) | **GET** /users/{user_pk}/profiles/ | 
[**usersProfilesPartialUpdate**](UsersApi.md#usersProfilesPartialUpdate) | **PATCH** /users/{user_pk}/profiles/{id}/ | 
[**usersProfilesRead**](UsersApi.md#usersProfilesRead) | **GET** /users/{user_pk}/profiles/{id}/ | 
[**usersProfilesUpdate**](UsersApi.md#usersProfilesUpdate) | **PUT** /users/{user_pk}/profiles/{id}/ | 
[**usersRead**](UsersApi.md#usersRead) | **GET** /users/{id}/ | 


# **usersList**
> List<WelfarebrothersUser> usersList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = UsersApi();

try { 
    final result = api_instance.usersList();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<WelfarebrothersUser>**](WelfarebrothersUser.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersProfilesCreate**
> WelfarebrothersUserProfile usersProfilesCreate(userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = UsersApi();
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.usersProfilesCreate(userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfilesCreate: $e\n');
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

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersProfilesDelete**
> usersProfilesDelete(id, userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 

try { 
    api_instance.usersProfilesDelete(id, userPk);
} catch (e) {
    print('Exception when calling UsersApi->usersProfilesDelete: $e\n');
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

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersProfilesList**
> List<WelfarebrothersUserProfile> usersProfilesList(userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = UsersApi();
final userPk = userPk_example; // String | 

try { 
    final result = api_instance.usersProfilesList(userPk);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfilesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 

### Return type

[**List<WelfarebrothersUserProfile>**](WelfarebrothersUserProfile.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersProfilesPartialUpdate**
> WelfarebrothersUserProfile usersProfilesPartialUpdate(id, userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.usersProfilesPartialUpdate(id, userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfilesPartialUpdate: $e\n');
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

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersProfilesRead**
> WelfarebrothersUserProfile usersProfilesRead(id, userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 

try { 
    final result = api_instance.usersProfilesRead(id, userPk);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfilesRead: $e\n');
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

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersProfilesUpdate**
> WelfarebrothersUserProfile usersProfilesUpdate(id, userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = UsersApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.usersProfilesUpdate(id, userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersProfilesUpdate: $e\n');
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

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRead**
> WelfarebrothersUser usersRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

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

[**WelfarebrothersUser**](WelfarebrothersUser.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

