# welfarebrothers_for_worker_api_client.api.ForWorkerApi

## Load the API package
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**forWorkerFacilitiesCreate**](ForWorkerApi.md#forWorkerFacilitiesCreate) | **POST** /for_worker/facilities/ | 
[**forWorkerFacilitiesDelete**](ForWorkerApi.md#forWorkerFacilitiesDelete) | **DELETE** /for_worker/facilities/{id}/ | 
[**forWorkerFacilitiesList**](ForWorkerApi.md#forWorkerFacilitiesList) | **GET** /for_worker/facilities/ | 
[**forWorkerFacilitiesPartialUpdate**](ForWorkerApi.md#forWorkerFacilitiesPartialUpdate) | **PATCH** /for_worker/facilities/{id}/ | 
[**forWorkerFacilitiesRead**](ForWorkerApi.md#forWorkerFacilitiesRead) | **GET** /for_worker/facilities/{id}/ | 
[**forWorkerFacilitiesUpdate**](ForWorkerApi.md#forWorkerFacilitiesUpdate) | **PUT** /for_worker/facilities/{id}/ | 
[**forWorkerFacilityAdministrationsAvailabilityCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsAvailabilityCreate) | **POST** /for_worker/facility_administrations/{facility_administration_pk}/availability/ | 
[**forWorkerFacilityAdministrationsAvailabilityDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsAvailabilityDelete) | **DELETE** /for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/ | 
[**forWorkerFacilityAdministrationsAvailabilityList**](ForWorkerApi.md#forWorkerFacilityAdministrationsAvailabilityList) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/availability/ | 
[**forWorkerFacilityAdministrationsAvailabilityPartialUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsAvailabilityPartialUpdate) | **PATCH** /for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/ | 
[**forWorkerFacilityAdministrationsAvailabilityRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsAvailabilityRead) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/ | 
[**forWorkerFacilityAdministrationsAvailabilityUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsAvailabilityUpdate) | **PUT** /for_worker/facility_administrations/{facility_administration_pk}/availability/{id}/ | 
[**forWorkerFacilityAdministrationsCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsCreate) | **POST** /for_worker/facility_administrations/ | 
[**forWorkerFacilityAdministrationsDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsDelete) | **DELETE** /for_worker/facility_administrations/{facility}/ | 
[**forWorkerFacilityAdministrationsList**](ForWorkerApi.md#forWorkerFacilityAdministrationsList) | **GET** /for_worker/facility_administrations/ | 
[**forWorkerFacilityAdministrationsPartialUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsPartialUpdate) | **PATCH** /for_worker/facility_administrations/{facility}/ | 
[**forWorkerFacilityAdministrationsRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsRead) | **GET** /for_worker/facility_administrations/{facility}/ | 
[**forWorkerFacilityAdministrationsShiftConfigCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigCreate) | **POST** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/ | 
[**forWorkerFacilityAdministrationsShiftConfigDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigDelete) | **DELETE** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigList**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigList) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/ | 
[**forWorkerFacilityAdministrationsShiftConfigPartialUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigPartialUpdate) | **PATCH** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigRead) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreate) | **POST** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/ | 
[**forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDelete) | **DELETE** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsList**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsList) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/ | 
[**forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdate) | **PATCH** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsRead) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdate) | **PUT** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/role_assignment_requirements/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreate) | **POST** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/ | 
[**forWorkerFacilityAdministrationsShiftConfigShiftPatternsDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigShiftPatternsDelete) | **DELETE** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigShiftPatternsList**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigShiftPatternsList) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/ | 
[**forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdate) | **PATCH** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigShiftPatternsRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigShiftPatternsRead) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate) | **PUT** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{shift_config_pk}/shift_patterns/{id}/ | 
[**forWorkerFacilityAdministrationsShiftConfigUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsShiftConfigUpdate) | **PUT** /for_worker/facility_administrations/{facility_administration_pk}/shift_config/{id}/ | 
[**forWorkerFacilityAdministrationsUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsUpdate) | **PUT** /for_worker/facility_administrations/{facility}/ | 
[**forWorkerFacilityAdministrationsWorkSchedulesCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkSchedulesCreate) | **POST** /for_worker/facility_administrations/{facility_administration_pk}/work_schedules/ | 
[**forWorkerFacilityAdministrationsWorkSchedulesDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkSchedulesDelete) | **DELETE** /for_worker/facility_administrations/{facility_administration_pk}/work_schedules/{id}/ | 
[**forWorkerFacilityAdministrationsWorkSchedulesExportCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkSchedulesExportCreate) | **POST** /for_worker/facility_administrations/{facility_administration_id}/work_schedules/{work_schedule_id}/_export | 
[**forWorkerFacilityAdministrationsWorkSchedulesExportList**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkSchedulesExportList) | **GET** /for_worker/facility_administrations/{facility_administration_id}/work_schedules/{work_schedule_id}/_export | 
[**forWorkerFacilityAdministrationsWorkSchedulesList**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkSchedulesList) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/work_schedules/ | 
[**forWorkerFacilityAdministrationsWorkSchedulesRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkSchedulesRead) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/work_schedules/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesCreate) | **POST** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreate) | **POST** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDelete) | **DELETE** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsList**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsList) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdate) | **PATCH** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsRead) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdate) | **PUT** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/day_off_requests/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesDelete) | **DELETE** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesList**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesList) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesPartialUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesPartialUpdate) | **PATCH** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesRead) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesUpdate) | **PUT** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreate) | **POST** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDelete**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDelete) | **DELETE** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigList**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigList) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdate) | **PATCH** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigRead**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigRead) | **GET** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/ | 
[**forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdate**](ForWorkerApi.md#forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdate) | **PUT** /for_worker/facility_administrations/{facility_administration_pk}/worker_profiles/{facility_worker_profile_pk}/working_hours_config/{id}/ | 
[**forWorkerFacilityUserLinkTypesList**](ForWorkerApi.md#forWorkerFacilityUserLinkTypesList) | **GET** /for_worker/facility_user_link_types/ | 
[**forWorkerFacilityUserLinksCreate**](ForWorkerApi.md#forWorkerFacilityUserLinksCreate) | **POST** /for_worker/facility_user_links/ | 
[**forWorkerFacilityUserLinksDelete**](ForWorkerApi.md#forWorkerFacilityUserLinksDelete) | **DELETE** /for_worker/facility_user_links/{id}/ | 
[**forWorkerFacilityUserLinksList**](ForWorkerApi.md#forWorkerFacilityUserLinksList) | **GET** /for_worker/facility_user_links/ | 
[**forWorkerFacilityUserLinksPartialUpdate**](ForWorkerApi.md#forWorkerFacilityUserLinksPartialUpdate) | **PATCH** /for_worker/facility_user_links/{id}/ | 
[**forWorkerFacilityUserLinksRead**](ForWorkerApi.md#forWorkerFacilityUserLinksRead) | **GET** /for_worker/facility_user_links/{id}/ | 
[**forWorkerFacilityUserLinksUpdate**](ForWorkerApi.md#forWorkerFacilityUserLinksUpdate) | **PUT** /for_worker/facility_user_links/{id}/ | 
[**forWorkerRolesCreate**](ForWorkerApi.md#forWorkerRolesCreate) | **POST** /for_worker/roles/ | 
[**forWorkerRolesDelete**](ForWorkerApi.md#forWorkerRolesDelete) | **DELETE** /for_worker/roles/{id}/ | 
[**forWorkerRolesList**](ForWorkerApi.md#forWorkerRolesList) | **GET** /for_worker/roles/ | 
[**forWorkerRolesPartialUpdate**](ForWorkerApi.md#forWorkerRolesPartialUpdate) | **PATCH** /for_worker/roles/{id}/ | 
[**forWorkerRolesRead**](ForWorkerApi.md#forWorkerRolesRead) | **GET** /for_worker/roles/{id}/ | 
[**forWorkerRolesUpdate**](ForWorkerApi.md#forWorkerRolesUpdate) | **PUT** /for_worker/roles/{id}/ | 
[**forWorkerUserCreate**](ForWorkerApi.md#forWorkerUserCreate) | **POST** /for_worker/user/ | 
[**forWorkerUserDelete**](ForWorkerApi.md#forWorkerUserDelete) | **DELETE** /for_worker/user/{id}/ | 
[**forWorkerUserPartialUpdate**](ForWorkerApi.md#forWorkerUserPartialUpdate) | **PATCH** /for_worker/user/{id}/ | 
[**forWorkerUserProfileCreate**](ForWorkerApi.md#forWorkerUserProfileCreate) | **POST** /for_worker/user/{user_pk}/profile/ | 
[**forWorkerUserProfileDelete**](ForWorkerApi.md#forWorkerUserProfileDelete) | **DELETE** /for_worker/user/{user_pk}/profile/{id}/ | 
[**forWorkerUserProfileFavoriteFacilitiesCreate**](ForWorkerApi.md#forWorkerUserProfileFavoriteFacilitiesCreate) | **POST** /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/ | 
[**forWorkerUserProfileFavoriteFacilitiesDelete**](ForWorkerApi.md#forWorkerUserProfileFavoriteFacilitiesDelete) | **DELETE** /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/ | 
[**forWorkerUserProfileFavoriteFacilitiesList**](ForWorkerApi.md#forWorkerUserProfileFavoriteFacilitiesList) | **GET** /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/ | 
[**forWorkerUserProfileFavoriteFacilitiesPartialUpdate**](ForWorkerApi.md#forWorkerUserProfileFavoriteFacilitiesPartialUpdate) | **PATCH** /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/ | 
[**forWorkerUserProfileFavoriteFacilitiesRead**](ForWorkerApi.md#forWorkerUserProfileFavoriteFacilitiesRead) | **GET** /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/ | 
[**forWorkerUserProfileFavoriteFacilitiesUpdate**](ForWorkerApi.md#forWorkerUserProfileFavoriteFacilitiesUpdate) | **PUT** /for_worker/user/{user_pk}/profile/{user_profile_pk}/favorite_facilities/{id}/ | 
[**forWorkerUserProfileList**](ForWorkerApi.md#forWorkerUserProfileList) | **GET** /for_worker/user/{user_pk}/profile/ | 
[**forWorkerUserProfilePartialUpdate**](ForWorkerApi.md#forWorkerUserProfilePartialUpdate) | **PATCH** /for_worker/user/{user_pk}/profile/{id}/ | 
[**forWorkerUserProfileRead**](ForWorkerApi.md#forWorkerUserProfileRead) | **GET** /for_worker/user/{user_pk}/profile/{id}/ | 
[**forWorkerUserProfileUpdate**](ForWorkerApi.md#forWorkerUserProfileUpdate) | **PUT** /for_worker/user/{user_pk}/profile/{id}/ | 
[**forWorkerUserProfileWorkerProfileCreate**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileCreate) | **POST** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/ | 
[**forWorkerUserProfileWorkerProfileDelete**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileDelete) | **DELETE** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/ | 
[**forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreate**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreate) | **POST** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/ | 
[**forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDelete**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDelete) | **DELETE** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/ | 
[**forWorkerUserProfileWorkerProfileFacilityWorkerProfilesList**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileFacilityWorkerProfilesList) | **GET** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/ | 
[**forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdate**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdate) | **PATCH** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/ | 
[**forWorkerUserProfileWorkerProfileFacilityWorkerProfilesRead**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileFacilityWorkerProfilesRead) | **GET** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/ | 
[**forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdate**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdate) | **PUT** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{worker_profile_pk}/facility_worker_profiles/{id}/ | 
[**forWorkerUserProfileWorkerProfileList**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileList) | **GET** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/ | 
[**forWorkerUserProfileWorkerProfilePartialUpdate**](ForWorkerApi.md#forWorkerUserProfileWorkerProfilePartialUpdate) | **PATCH** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/ | 
[**forWorkerUserProfileWorkerProfileUpdate**](ForWorkerApi.md#forWorkerUserProfileWorkerProfileUpdate) | **PUT** /for_worker/user/{user_pk}/profile/{user_profile_pk}/worker_profile/{id}/ | 
[**forWorkerUserRead**](ForWorkerApi.md#forWorkerUserRead) | **GET** /for_worker/user/{id}/ | 
[**forWorkerUserUpdate**](ForWorkerApi.md#forWorkerUserUpdate) | **PUT** /for_worker/user/{id}/ | 


# **forWorkerFacilitiesCreate**
> FacilityForWorker forWorkerFacilitiesCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final data = FacilityForWorkerForWrite(); // FacilityForWorkerForWrite | 

try { 
    final result = api_instance.forWorkerFacilitiesCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilitiesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FacilityForWorkerForWrite**](FacilityForWorkerForWrite.md)|  | 

### Return type

[**FacilityForWorker**](FacilityForWorker.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilitiesDelete**
> forWorkerFacilitiesDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this facility.

try { 
    api_instance.forWorkerFacilitiesDelete(id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilitiesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| A UUID string identifying this facility. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilitiesList**
> List<FacilityForWorker> forWorkerFacilitiesList(prefecture, city, careServiceGroup, careServiceGroupCategory, keywordContains)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final prefecture = prefecture_example; // String | 
final city = city_example; // String | 
final careServiceGroup = careServiceGroup_example; // String | 
final careServiceGroupCategory = careServiceGroupCategory_example; // String | 
final keywordContains = keywordContains_example; // String | 

try { 
    final result = api_instance.forWorkerFacilitiesList(prefecture, city, careServiceGroup, careServiceGroupCategory, keywordContains);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilitiesList: $e\n');
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

[**List<FacilityForWorker>**](FacilityForWorker.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilitiesPartialUpdate**
> FacilityForWorker forWorkerFacilitiesPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this facility.
final data = FacilityForWorkerForWrite(); // FacilityForWorkerForWrite | 

try { 
    final result = api_instance.forWorkerFacilitiesPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilitiesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| A UUID string identifying this facility. | 
 **data** | [**FacilityForWorkerForWrite**](FacilityForWorkerForWrite.md)|  | 

### Return type

[**FacilityForWorker**](FacilityForWorker.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilitiesRead**
> FacilityForWorker forWorkerFacilitiesRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this facility.

try { 
    final result = api_instance.forWorkerFacilitiesRead(id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilitiesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| A UUID string identifying this facility. | 

### Return type

[**FacilityForWorker**](FacilityForWorker.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilitiesUpdate**
> FacilityForWorker forWorkerFacilitiesUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this facility.
final data = FacilityForWorkerForWrite(); // FacilityForWorkerForWrite | 

try { 
    final result = api_instance.forWorkerFacilitiesUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilitiesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| A UUID string identifying this facility. | 
 **data** | [**FacilityForWorkerForWrite**](FacilityForWorkerForWrite.md)|  | 

### Return type

[**FacilityForWorker**](FacilityForWorker.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsAvailabilityCreate**
> FacilityAvailability forWorkerFacilityAdministrationsAvailabilityCreate(facilityAdministrationPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final data = FacilityAvailabilityForWrite(); // FacilityAvailabilityForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsAvailabilityCreate(facilityAdministrationPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsAvailabilityCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **data** | [**FacilityAvailabilityForWrite**](FacilityAvailabilityForWrite.md)|  | 

### Return type

[**FacilityAvailability**](FacilityAvailability.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsAvailabilityDelete**
> forWorkerFacilityAdministrationsAvailabilityDelete(facilityAdministrationPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this facility availability.

try { 
    api_instance.forWorkerFacilityAdministrationsAvailabilityDelete(facilityAdministrationPk, id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsAvailabilityDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this facility availability. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsAvailabilityList**
> List<FacilityAvailability> forWorkerFacilityAdministrationsAvailabilityList(facilityAdministrationPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsAvailabilityList(facilityAdministrationPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsAvailabilityList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 

### Return type

[**List<FacilityAvailability>**](FacilityAvailability.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsAvailabilityPartialUpdate**
> FacilityAvailability forWorkerFacilityAdministrationsAvailabilityPartialUpdate(facilityAdministrationPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this facility availability.
final data = FacilityAvailabilityForWrite(); // FacilityAvailabilityForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsAvailabilityPartialUpdate(facilityAdministrationPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsAvailabilityPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this facility availability. | 
 **data** | [**FacilityAvailabilityForWrite**](FacilityAvailabilityForWrite.md)|  | 

### Return type

[**FacilityAvailability**](FacilityAvailability.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsAvailabilityRead**
> FacilityAvailability forWorkerFacilityAdministrationsAvailabilityRead(facilityAdministrationPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this facility availability.

try { 
    final result = api_instance.forWorkerFacilityAdministrationsAvailabilityRead(facilityAdministrationPk, id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsAvailabilityRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this facility availability. | 

### Return type

[**FacilityAvailability**](FacilityAvailability.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsAvailabilityUpdate**
> FacilityAvailability forWorkerFacilityAdministrationsAvailabilityUpdate(facilityAdministrationPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this facility availability.
final data = FacilityAvailabilityForWrite(); // FacilityAvailabilityForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsAvailabilityUpdate(facilityAdministrationPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsAvailabilityUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this facility availability. | 
 **data** | [**FacilityAvailabilityForWrite**](FacilityAvailabilityForWrite.md)|  | 

### Return type

[**FacilityAvailability**](FacilityAvailability.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsCreate**
> FacilityAdministration forWorkerFacilityAdministrationsCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final data = FacilityAdministrationForWrite(); // FacilityAdministrationForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FacilityAdministrationForWrite**](FacilityAdministrationForWrite.md)|  | 

### Return type

[**FacilityAdministration**](FacilityAdministration.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsDelete**
> forWorkerFacilityAdministrationsDelete(facility)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facility = facility_example; // String | A unique value identifying this facility administration.

try { 
    api_instance.forWorkerFacilityAdministrationsDelete(facility);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facility** | **String**| A unique value identifying this facility administration. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsList**
> List<FacilityAdministration> forWorkerFacilityAdministrationsList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();

try { 
    final result = api_instance.forWorkerFacilityAdministrationsList();
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FacilityAdministration>**](FacilityAdministration.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsPartialUpdate**
> FacilityAdministration forWorkerFacilityAdministrationsPartialUpdate(facility, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facility = facility_example; // String | A unique value identifying this facility administration.
final data = FacilityAdministrationForWrite(); // FacilityAdministrationForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsPartialUpdate(facility, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facility** | **String**| A unique value identifying this facility administration. | 
 **data** | [**FacilityAdministrationForWrite**](FacilityAdministrationForWrite.md)|  | 

### Return type

[**FacilityAdministration**](FacilityAdministration.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsRead**
> FacilityAdministration forWorkerFacilityAdministrationsRead(facility)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facility = facility_example; // String | A unique value identifying this facility administration.

try { 
    final result = api_instance.forWorkerFacilityAdministrationsRead(facility);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facility** | **String**| A unique value identifying this facility administration. | 

### Return type

[**FacilityAdministration**](FacilityAdministration.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigCreate**
> ShiftConfig forWorkerFacilityAdministrationsShiftConfigCreate(facilityAdministrationPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final data = ShiftConfigForWrite(); // ShiftConfigForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigCreate(facilityAdministrationPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **data** | [**ShiftConfigForWrite**](ShiftConfigForWrite.md)|  | 

### Return type

[**ShiftConfig**](ShiftConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigDelete**
> forWorkerFacilityAdministrationsShiftConfigDelete(facilityAdministrationPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this shift config.

try { 
    api_instance.forWorkerFacilityAdministrationsShiftConfigDelete(facilityAdministrationPk, id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this shift config. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigList**
> List<ShiftConfig> forWorkerFacilityAdministrationsShiftConfigList(facilityAdministrationPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigList(facilityAdministrationPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 

### Return type

[**List<ShiftConfig>**](ShiftConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigPartialUpdate**
> ShiftConfig forWorkerFacilityAdministrationsShiftConfigPartialUpdate(facilityAdministrationPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this shift config.
final data = ShiftConfigForWrite(); // ShiftConfigForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigPartialUpdate(facilityAdministrationPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this shift config. | 
 **data** | [**ShiftConfigForWrite**](ShiftConfigForWrite.md)|  | 

### Return type

[**ShiftConfig**](ShiftConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigRead**
> ShiftConfig forWorkerFacilityAdministrationsShiftConfigRead(facilityAdministrationPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this shift config.

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigRead(facilityAdministrationPk, id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this shift config. | 

### Return type

[**ShiftConfig**](ShiftConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreate**
> RoleAssignmentRequirement forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreate(facilityAdministrationPk, shiftConfigPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final shiftConfigPk = shiftConfigPk_example; // String | 
final data = RoleAssignmentRequirementForWrite(); // RoleAssignmentRequirementForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreate(facilityAdministrationPk, shiftConfigPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **shiftConfigPk** | **String**|  | 
 **data** | [**RoleAssignmentRequirementForWrite**](RoleAssignmentRequirementForWrite.md)|  | 

### Return type

[**RoleAssignmentRequirement**](RoleAssignmentRequirement.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDelete**
> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDelete(facilityAdministrationPk, id, shiftConfigPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this role assignment requirement.
final shiftConfigPk = shiftConfigPk_example; // String | 

try { 
    api_instance.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDelete(facilityAdministrationPk, id, shiftConfigPk);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this role assignment requirement. | 
 **shiftConfigPk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsList**
> List<RoleAssignmentRequirement> forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsList(facilityAdministrationPk, shiftConfigPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final shiftConfigPk = shiftConfigPk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsList(facilityAdministrationPk, shiftConfigPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **shiftConfigPk** | **String**|  | 

### Return type

[**List<RoleAssignmentRequirement>**](RoleAssignmentRequirement.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdate**
> RoleAssignmentRequirement forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdate(facilityAdministrationPk, id, shiftConfigPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this role assignment requirement.
final shiftConfigPk = shiftConfigPk_example; // String | 
final data = RoleAssignmentRequirementForWrite(); // RoleAssignmentRequirementForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdate(facilityAdministrationPk, id, shiftConfigPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this role assignment requirement. | 
 **shiftConfigPk** | **String**|  | 
 **data** | [**RoleAssignmentRequirementForWrite**](RoleAssignmentRequirementForWrite.md)|  | 

### Return type

[**RoleAssignmentRequirement**](RoleAssignmentRequirement.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsRead**
> RoleAssignmentRequirement forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsRead(facilityAdministrationPk, id, shiftConfigPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this role assignment requirement.
final shiftConfigPk = shiftConfigPk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsRead(facilityAdministrationPk, id, shiftConfigPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this role assignment requirement. | 
 **shiftConfigPk** | **String**|  | 

### Return type

[**RoleAssignmentRequirement**](RoleAssignmentRequirement.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdate**
> RoleAssignmentRequirement forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdate(facilityAdministrationPk, id, shiftConfigPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this role assignment requirement.
final shiftConfigPk = shiftConfigPk_example; // String | 
final data = RoleAssignmentRequirementForWrite(); // RoleAssignmentRequirementForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdate(facilityAdministrationPk, id, shiftConfigPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this role assignment requirement. | 
 **shiftConfigPk** | **String**|  | 
 **data** | [**RoleAssignmentRequirementForWrite**](RoleAssignmentRequirementForWrite.md)|  | 

### Return type

[**RoleAssignmentRequirement**](RoleAssignmentRequirement.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreate**
> ShiftPattern forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreate(facilityAdministrationPk, shiftConfigPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final shiftConfigPk = shiftConfigPk_example; // String | 
final data = ShiftPatternForWrite(); // ShiftPatternForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreate(facilityAdministrationPk, shiftConfigPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **shiftConfigPk** | **String**|  | 
 **data** | [**ShiftPatternForWrite**](ShiftPatternForWrite.md)|  | 

### Return type

[**ShiftPattern**](ShiftPattern.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigShiftPatternsDelete**
> forWorkerFacilityAdministrationsShiftConfigShiftPatternsDelete(facilityAdministrationPk, id, shiftConfigPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this shift pattern.
final shiftConfigPk = shiftConfigPk_example; // String | 

try { 
    api_instance.forWorkerFacilityAdministrationsShiftConfigShiftPatternsDelete(facilityAdministrationPk, id, shiftConfigPk);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigShiftPatternsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this shift pattern. | 
 **shiftConfigPk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigShiftPatternsList**
> List<ShiftPattern> forWorkerFacilityAdministrationsShiftConfigShiftPatternsList(facilityAdministrationPk, shiftConfigPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final shiftConfigPk = shiftConfigPk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigShiftPatternsList(facilityAdministrationPk, shiftConfigPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigShiftPatternsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **shiftConfigPk** | **String**|  | 

### Return type

[**List<ShiftPattern>**](ShiftPattern.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdate**
> ShiftPattern forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdate(facilityAdministrationPk, id, shiftConfigPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this shift pattern.
final shiftConfigPk = shiftConfigPk_example; // String | 
final data = ShiftPatternForWrite(); // ShiftPatternForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdate(facilityAdministrationPk, id, shiftConfigPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigShiftPatternsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this shift pattern. | 
 **shiftConfigPk** | **String**|  | 
 **data** | [**ShiftPatternForWrite**](ShiftPatternForWrite.md)|  | 

### Return type

[**ShiftPattern**](ShiftPattern.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigShiftPatternsRead**
> ShiftPattern forWorkerFacilityAdministrationsShiftConfigShiftPatternsRead(facilityAdministrationPk, id, shiftConfigPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this shift pattern.
final shiftConfigPk = shiftConfigPk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigShiftPatternsRead(facilityAdministrationPk, id, shiftConfigPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigShiftPatternsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this shift pattern. | 
 **shiftConfigPk** | **String**|  | 

### Return type

[**ShiftPattern**](ShiftPattern.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate**
> ShiftPattern forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate(facilityAdministrationPk, id, shiftConfigPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this shift pattern.
final shiftConfigPk = shiftConfigPk_example; // String | 
final data = ShiftPatternForWrite(); // ShiftPatternForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate(facilityAdministrationPk, id, shiftConfigPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this shift pattern. | 
 **shiftConfigPk** | **String**|  | 
 **data** | [**ShiftPatternForWrite**](ShiftPatternForWrite.md)|  | 

### Return type

[**ShiftPattern**](ShiftPattern.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsShiftConfigUpdate**
> ShiftConfig forWorkerFacilityAdministrationsShiftConfigUpdate(facilityAdministrationPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this shift config.
final data = ShiftConfigForWrite(); // ShiftConfigForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsShiftConfigUpdate(facilityAdministrationPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsShiftConfigUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this shift config. | 
 **data** | [**ShiftConfigForWrite**](ShiftConfigForWrite.md)|  | 

### Return type

[**ShiftConfig**](ShiftConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsUpdate**
> FacilityAdministration forWorkerFacilityAdministrationsUpdate(facility, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facility = facility_example; // String | A unique value identifying this facility administration.
final data = FacilityAdministrationForWrite(); // FacilityAdministrationForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsUpdate(facility, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facility** | **String**| A unique value identifying this facility administration. | 
 **data** | [**FacilityAdministrationForWrite**](FacilityAdministrationForWrite.md)|  | 

### Return type

[**FacilityAdministration**](FacilityAdministration.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkSchedulesCreate**
> WorkSchedule forWorkerFacilityAdministrationsWorkSchedulesCreate(facilityAdministrationPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final data = WorkScheduleForWrite(); // WorkScheduleForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkSchedulesCreate(facilityAdministrationPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkSchedulesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **data** | [**WorkScheduleForWrite**](WorkScheduleForWrite.md)|  | 

### Return type

[**WorkSchedule**](WorkSchedule.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkSchedulesDelete**
> forWorkerFacilityAdministrationsWorkSchedulesDelete(facilityAdministrationPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this work schedule.

try { 
    api_instance.forWorkerFacilityAdministrationsWorkSchedulesDelete(facilityAdministrationPk, id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkSchedulesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this work schedule. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkSchedulesExportCreate**
> forWorkerFacilityAdministrationsWorkSchedulesExportCreate(facilityAdministrationId, workScheduleId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationId = facilityAdministrationId_example; // String | 
final workScheduleId = workScheduleId_example; // String | 

try { 
    api_instance.forWorkerFacilityAdministrationsWorkSchedulesExportCreate(facilityAdministrationId, workScheduleId);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkSchedulesExportCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationId** | **String**|  | 
 **workScheduleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkSchedulesExportList**
> forWorkerFacilityAdministrationsWorkSchedulesExportList(facilityAdministrationId, workScheduleId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationId = facilityAdministrationId_example; // String | 
final workScheduleId = workScheduleId_example; // String | 

try { 
    api_instance.forWorkerFacilityAdministrationsWorkSchedulesExportList(facilityAdministrationId, workScheduleId);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkSchedulesExportList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationId** | **String**|  | 
 **workScheduleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkSchedulesList**
> List<WorkScheduleSummary> forWorkerFacilityAdministrationsWorkSchedulesList(facilityAdministrationPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkSchedulesList(facilityAdministrationPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkSchedulesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 

### Return type

[**List<WorkScheduleSummary>**](WorkScheduleSummary.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkSchedulesRead**
> WorkSchedule forWorkerFacilityAdministrationsWorkSchedulesRead(facilityAdministrationPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this work schedule.

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkSchedulesRead(facilityAdministrationPk, id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkSchedulesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this work schedule. | 

### Return type

[**WorkSchedule**](WorkSchedule.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesCreate**
> FacilityWorkerProfile forWorkerFacilityAdministrationsWorkerProfilesCreate(facilityAdministrationPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final data = FacilityWorkerProfileForWrite(); // FacilityWorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesCreate(facilityAdministrationPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **data** | [**FacilityWorkerProfileForWrite**](FacilityWorkerProfileForWrite.md)|  | 

### Return type

[**FacilityWorkerProfile**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreate**
> DayOffRequest forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreate(facilityAdministrationPk, facilityWorkerProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final data = DayOffRequestForWrite(); // DayOffRequestForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreate(facilityAdministrationPk, facilityWorkerProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **data** | [**DayOffRequestForWrite**](DayOffRequestForWrite.md)|  | 

### Return type

[**DayOffRequest**](DayOffRequest.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDelete**
> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDelete(facilityAdministrationPk, facilityWorkerProfilePk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final id = 56; // int | A unique integer value identifying this day off request.

try { 
    api_instance.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDelete(facilityAdministrationPk, facilityWorkerProfilePk, id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this day off request. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsList**
> List<DayOffRequest> forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsList(facilityAdministrationPk, facilityWorkerProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsList(facilityAdministrationPk, facilityWorkerProfilePk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 

### Return type

[**List<DayOffRequest>**](DayOffRequest.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdate**
> DayOffRequest forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdate(facilityAdministrationPk, facilityWorkerProfilePk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final id = 56; // int | A unique integer value identifying this day off request.
final data = DayOffRequestForWrite(); // DayOffRequestForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdate(facilityAdministrationPk, facilityWorkerProfilePk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this day off request. | 
 **data** | [**DayOffRequestForWrite**](DayOffRequestForWrite.md)|  | 

### Return type

[**DayOffRequest**](DayOffRequest.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsRead**
> DayOffRequest forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsRead(facilityAdministrationPk, facilityWorkerProfilePk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final id = 56; // int | A unique integer value identifying this day off request.

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsRead(facilityAdministrationPk, facilityWorkerProfilePk, id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this day off request. | 

### Return type

[**DayOffRequest**](DayOffRequest.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdate**
> DayOffRequest forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdate(facilityAdministrationPk, facilityWorkerProfilePk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final id = 56; // int | A unique integer value identifying this day off request.
final data = DayOffRequestForWrite(); // DayOffRequestForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdate(facilityAdministrationPk, facilityWorkerProfilePk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this day off request. | 
 **data** | [**DayOffRequestForWrite**](DayOffRequestForWrite.md)|  | 

### Return type

[**DayOffRequest**](DayOffRequest.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesDelete**
> forWorkerFacilityAdministrationsWorkerProfilesDelete(facilityAdministrationPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this facility worker profile.

try { 
    api_instance.forWorkerFacilityAdministrationsWorkerProfilesDelete(facilityAdministrationPk, id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this facility worker profile. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesList**
> List<FacilityWorkerProfile> forWorkerFacilityAdministrationsWorkerProfilesList(facilityAdministrationPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesList(facilityAdministrationPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 

### Return type

[**List<FacilityWorkerProfile>**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesPartialUpdate**
> FacilityWorkerProfile forWorkerFacilityAdministrationsWorkerProfilesPartialUpdate(facilityAdministrationPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this facility worker profile.
final data = FacilityWorkerProfileForWrite(); // FacilityWorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesPartialUpdate(facilityAdministrationPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this facility worker profile. | 
 **data** | [**FacilityWorkerProfileForWrite**](FacilityWorkerProfileForWrite.md)|  | 

### Return type

[**FacilityWorkerProfile**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesRead**
> FacilityWorkerProfile forWorkerFacilityAdministrationsWorkerProfilesRead(facilityAdministrationPk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this facility worker profile.

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesRead(facilityAdministrationPk, id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this facility worker profile. | 

### Return type

[**FacilityWorkerProfile**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesUpdate**
> FacilityWorkerProfile forWorkerFacilityAdministrationsWorkerProfilesUpdate(facilityAdministrationPk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final id = 56; // int | A unique integer value identifying this facility worker profile.
final data = FacilityWorkerProfileForWrite(); // FacilityWorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesUpdate(facilityAdministrationPk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this facility worker profile. | 
 **data** | [**FacilityWorkerProfileForWrite**](FacilityWorkerProfileForWrite.md)|  | 

### Return type

[**FacilityWorkerProfile**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreate**
> WorkingHoursConfig forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreate(facilityAdministrationPk, facilityWorkerProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final data = WorkingHoursConfigForWrite(); // WorkingHoursConfigForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreate(facilityAdministrationPk, facilityWorkerProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **data** | [**WorkingHoursConfigForWrite**](WorkingHoursConfigForWrite.md)|  | 

### Return type

[**WorkingHoursConfig**](WorkingHoursConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDelete**
> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDelete(facilityAdministrationPk, facilityWorkerProfilePk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final id = 56; // int | A unique integer value identifying this working hours config.

try { 
    api_instance.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDelete(facilityAdministrationPk, facilityWorkerProfilePk, id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this working hours config. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigList**
> List<WorkingHoursConfig> forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigList(facilityAdministrationPk, facilityWorkerProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigList(facilityAdministrationPk, facilityWorkerProfilePk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 

### Return type

[**List<WorkingHoursConfig>**](WorkingHoursConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdate**
> WorkingHoursConfig forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdate(facilityAdministrationPk, facilityWorkerProfilePk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final id = 56; // int | A unique integer value identifying this working hours config.
final data = WorkingHoursConfigForWrite(); // WorkingHoursConfigForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdate(facilityAdministrationPk, facilityWorkerProfilePk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this working hours config. | 
 **data** | [**WorkingHoursConfigForWrite**](WorkingHoursConfigForWrite.md)|  | 

### Return type

[**WorkingHoursConfig**](WorkingHoursConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigRead**
> WorkingHoursConfig forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigRead(facilityAdministrationPk, facilityWorkerProfilePk, id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final id = 56; // int | A unique integer value identifying this working hours config.

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigRead(facilityAdministrationPk, facilityWorkerProfilePk, id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this working hours config. | 

### Return type

[**WorkingHoursConfig**](WorkingHoursConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdate**
> WorkingHoursConfig forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdate(facilityAdministrationPk, facilityWorkerProfilePk, id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationPk = facilityAdministrationPk_example; // String | 
final facilityWorkerProfilePk = facilityWorkerProfilePk_example; // String | 
final id = 56; // int | A unique integer value identifying this working hours config.
final data = WorkingHoursConfigForWrite(); // WorkingHoursConfigForWrite | 

try { 
    final result = api_instance.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdate(facilityAdministrationPk, facilityWorkerProfilePk, id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationPk** | **String**|  | 
 **facilityWorkerProfilePk** | **String**|  | 
 **id** | **int**| A unique integer value identifying this working hours config. | 
 **data** | [**WorkingHoursConfigForWrite**](WorkingHoursConfigForWrite.md)|  | 

### Return type

[**WorkingHoursConfig**](WorkingHoursConfig.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityUserLinkTypesList**
> List<FacilityUserLinkType> forWorkerFacilityUserLinkTypesList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();

try { 
    final result = api_instance.forWorkerFacilityUserLinkTypesList();
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityUserLinkTypesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FacilityUserLinkType>**](FacilityUserLinkType.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityUserLinksCreate**
> FacilityUserLink forWorkerFacilityUserLinksCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.forWorkerFacilityUserLinksCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityUserLinksCreate: $e\n');
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

# **forWorkerFacilityUserLinksDelete**
> forWorkerFacilityUserLinksDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this facility user link.

try { 
    api_instance.forWorkerFacilityUserLinksDelete(id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityUserLinksDelete: $e\n');
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

# **forWorkerFacilityUserLinksList**
> List<FacilityUserLink> forWorkerFacilityUserLinksList(facilityAdministrationId)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final facilityAdministrationId = facilityAdministrationId_example; // String | 

try { 
    final result = api_instance.forWorkerFacilityUserLinksList(facilityAdministrationId);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityUserLinksList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facilityAdministrationId** | **String**|  | [optional] 

### Return type

[**List<FacilityUserLink>**](FacilityUserLink.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerFacilityUserLinksPartialUpdate**
> FacilityUserLink forWorkerFacilityUserLinksPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this facility user link.
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.forWorkerFacilityUserLinksPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityUserLinksPartialUpdate: $e\n');
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

# **forWorkerFacilityUserLinksRead**
> FacilityUserLink forWorkerFacilityUserLinksRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this facility user link.

try { 
    final result = api_instance.forWorkerFacilityUserLinksRead(id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityUserLinksRead: $e\n');
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

# **forWorkerFacilityUserLinksUpdate**
> FacilityUserLink forWorkerFacilityUserLinksUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this facility user link.
final data = FacilityUserLinkForWrite(); // FacilityUserLinkForWrite | 

try { 
    final result = api_instance.forWorkerFacilityUserLinksUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerFacilityUserLinksUpdate: $e\n');
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

# **forWorkerRolesCreate**
> Role forWorkerRolesCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final data = RoleForWrite(); // RoleForWrite | 

try { 
    final result = api_instance.forWorkerRolesCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerRolesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**RoleForWrite**](RoleForWrite.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerRolesDelete**
> forWorkerRolesDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = id_example; // String | A unique value identifying this role.

try { 
    api_instance.forWorkerRolesDelete(id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerRolesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this role. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerRolesList**
> List<Role> forWorkerRolesList()



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();

try { 
    final result = api_instance.forWorkerRolesList();
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerRolesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Role>**](Role.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerRolesPartialUpdate**
> Role forWorkerRolesPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = id_example; // String | A unique value identifying this role.
final data = RoleForWrite(); // RoleForWrite | 

try { 
    final result = api_instance.forWorkerRolesPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerRolesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this role. | 
 **data** | [**RoleForWrite**](RoleForWrite.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerRolesRead**
> Role forWorkerRolesRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = id_example; // String | A unique value identifying this role.

try { 
    final result = api_instance.forWorkerRolesRead(id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerRolesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this role. | 

### Return type

[**Role**](Role.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerRolesUpdate**
> Role forWorkerRolesUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = id_example; // String | A unique value identifying this role.
final data = RoleForWrite(); // RoleForWrite | 

try { 
    final result = api_instance.forWorkerRolesUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerRolesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique value identifying this role. | 
 **data** | [**RoleForWrite**](RoleForWrite.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserCreate**
> User forWorkerUserCreate(data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.forWorkerUserCreate(data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserCreate: $e\n');
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

# **forWorkerUserDelete**
> forWorkerUserDelete(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.

try { 
    api_instance.forWorkerUserDelete(id);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserDelete: $e\n');
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

# **forWorkerUserPartialUpdate**
> User forWorkerUserPartialUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.forWorkerUserPartialUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserPartialUpdate: $e\n');
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

# **forWorkerUserProfileCreate**
> WelfarebrothersUserProfile forWorkerUserProfileCreate(userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileCreate(userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileCreate: $e\n');
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

# **forWorkerUserProfileDelete**
> forWorkerUserProfileDelete(id, userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 

try { 
    api_instance.forWorkerUserProfileDelete(id, userPk);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileDelete: $e\n');
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

# **forWorkerUserProfileFavoriteFacilitiesCreate**
> FavoriteFacility forWorkerUserProfileFavoriteFacilitiesCreate(userPk, userProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final data = FavoriteFacilityForWrite(); // FavoriteFacilityForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileFavoriteFacilitiesCreate(userPk, userProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileFavoriteFacilitiesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **data** | [**FavoriteFacilityForWrite**](FavoriteFacilityForWrite.md)|  | 

### Return type

[**FavoriteFacility**](FavoriteFacility.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileFavoriteFacilitiesDelete**
> forWorkerUserProfileFavoriteFacilitiesDelete(id, userPk, userProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this favorite facility.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 

try { 
    api_instance.forWorkerUserProfileFavoriteFacilitiesDelete(id, userPk, userProfilePk);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileFavoriteFacilitiesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this favorite facility. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileFavoriteFacilitiesList**
> List<FavoriteFacility> forWorkerUserProfileFavoriteFacilitiesList(userPk, userProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 

try { 
    final result = api_instance.forWorkerUserProfileFavoriteFacilitiesList(userPk, userProfilePk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileFavoriteFacilitiesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 

### Return type

[**List<FavoriteFacility>**](FavoriteFacility.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileFavoriteFacilitiesPartialUpdate**
> FavoriteFacility forWorkerUserProfileFavoriteFacilitiesPartialUpdate(id, userPk, userProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this favorite facility.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final data = FavoriteFacilityForWrite(); // FavoriteFacilityForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileFavoriteFacilitiesPartialUpdate(id, userPk, userProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileFavoriteFacilitiesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this favorite facility. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **data** | [**FavoriteFacilityForWrite**](FavoriteFacilityForWrite.md)|  | 

### Return type

[**FavoriteFacility**](FavoriteFacility.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileFavoriteFacilitiesRead**
> FavoriteFacility forWorkerUserProfileFavoriteFacilitiesRead(id, userPk, userProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this favorite facility.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 

try { 
    final result = api_instance.forWorkerUserProfileFavoriteFacilitiesRead(id, userPk, userProfilePk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileFavoriteFacilitiesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this favorite facility. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 

### Return type

[**FavoriteFacility**](FavoriteFacility.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileFavoriteFacilitiesUpdate**
> FavoriteFacility forWorkerUserProfileFavoriteFacilitiesUpdate(id, userPk, userProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this favorite facility.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final data = FavoriteFacilityForWrite(); // FavoriteFacilityForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileFavoriteFacilitiesUpdate(id, userPk, userProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileFavoriteFacilitiesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this favorite facility. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **data** | [**FavoriteFacilityForWrite**](FavoriteFacilityForWrite.md)|  | 

### Return type

[**FavoriteFacility**](FavoriteFacility.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileList**
> List<WelfarebrothersUserProfile> forWorkerUserProfileList(userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final userPk = userPk_example; // String | 

try { 
    final result = api_instance.forWorkerUserProfileList(userPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileList: $e\n');
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

# **forWorkerUserProfilePartialUpdate**
> WelfarebrothersUserProfile forWorkerUserProfilePartialUpdate(id, userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfilePartialUpdate(id, userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfilePartialUpdate: $e\n');
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

# **forWorkerUserProfileRead**
> WelfarebrothersUserProfile forWorkerUserProfileRead(id, userPk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 

try { 
    final result = api_instance.forWorkerUserProfileRead(id, userPk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileRead: $e\n');
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

# **forWorkerUserProfileUpdate**
> WelfarebrothersUserProfile forWorkerUserProfileUpdate(id, userPk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers user profile.
final userPk = userPk_example; // String | 
final data = WelfarebrothersUserProfileForWrite(); // WelfarebrothersUserProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileUpdate(id, userPk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileUpdate: $e\n');
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

# **forWorkerUserProfileWorkerProfileCreate**
> WorkerProfile forWorkerUserProfileWorkerProfileCreate(userPk, userProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final data = WorkerProfileForWrite(); // WorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfileCreate(userPk, userProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **data** | [**WorkerProfileForWrite**](WorkerProfileForWrite.md)|  | 

### Return type

[**WorkerProfile**](WorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileDelete**
> forWorkerUserProfileWorkerProfileDelete(id, userPk, userProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this worker profile.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 

try { 
    api_instance.forWorkerUserProfileWorkerProfileDelete(id, userPk, userProfilePk);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this worker profile. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreate**
> FacilityWorkerProfile forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreate(userPk, userProfilePk, workerProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final workerProfilePk = workerProfilePk_example; // String | 
final data = FacilityWorkerProfileForWrite(); // FacilityWorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreate(userPk, userProfilePk, workerProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileFacilityWorkerProfilesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **workerProfilePk** | **String**|  | 
 **data** | [**FacilityWorkerProfileForWrite**](FacilityWorkerProfileForWrite.md)|  | 

### Return type

[**FacilityWorkerProfile**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDelete**
> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDelete(id, userPk, userProfilePk, workerProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this facility worker profile.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final workerProfilePk = workerProfilePk_example; // String | 

try { 
    api_instance.forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDelete(id, userPk, userProfilePk, workerProfilePk);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileFacilityWorkerProfilesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this facility worker profile. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **workerProfilePk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileFacilityWorkerProfilesList**
> List<FacilityWorkerProfile> forWorkerUserProfileWorkerProfileFacilityWorkerProfilesList(userPk, userProfilePk, workerProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final workerProfilePk = workerProfilePk_example; // String | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfileFacilityWorkerProfilesList(userPk, userProfilePk, workerProfilePk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileFacilityWorkerProfilesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **workerProfilePk** | **String**|  | 

### Return type

[**List<FacilityWorkerProfile>**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdate**
> FacilityWorkerProfile forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdate(id, userPk, userProfilePk, workerProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this facility worker profile.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final workerProfilePk = workerProfilePk_example; // String | 
final data = FacilityWorkerProfileForWrite(); // FacilityWorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdate(id, userPk, userProfilePk, workerProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileFacilityWorkerProfilesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this facility worker profile. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **workerProfilePk** | **String**|  | 
 **data** | [**FacilityWorkerProfileForWrite**](FacilityWorkerProfileForWrite.md)|  | 

### Return type

[**FacilityWorkerProfile**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileFacilityWorkerProfilesRead**
> FacilityWorkerProfile forWorkerUserProfileWorkerProfileFacilityWorkerProfilesRead(id, userPk, userProfilePk, workerProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this facility worker profile.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final workerProfilePk = workerProfilePk_example; // String | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfileFacilityWorkerProfilesRead(id, userPk, userProfilePk, workerProfilePk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileFacilityWorkerProfilesRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this facility worker profile. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **workerProfilePk** | **String**|  | 

### Return type

[**FacilityWorkerProfile**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdate**
> FacilityWorkerProfile forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdate(id, userPk, userProfilePk, workerProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this facility worker profile.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final workerProfilePk = workerProfilePk_example; // String | 
final data = FacilityWorkerProfileForWrite(); // FacilityWorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdate(id, userPk, userProfilePk, workerProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileFacilityWorkerProfilesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this facility worker profile. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **workerProfilePk** | **String**|  | 
 **data** | [**FacilityWorkerProfileForWrite**](FacilityWorkerProfileForWrite.md)|  | 

### Return type

[**FacilityWorkerProfile**](FacilityWorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileList**
> List<WorkerProfile> forWorkerUserProfileWorkerProfileList(userPk, userProfilePk)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfileList(userPk, userProfilePk);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 

### Return type

[**List<WorkerProfile>**](WorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfilePartialUpdate**
> WorkerProfile forWorkerUserProfileWorkerProfilePartialUpdate(id, userPk, userProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this worker profile.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final data = WorkerProfileForWrite(); // WorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfilePartialUpdate(id, userPk, userProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfilePartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this worker profile. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **data** | [**WorkerProfileForWrite**](WorkerProfileForWrite.md)|  | 

### Return type

[**WorkerProfile**](WorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserProfileWorkerProfileUpdate**
> WorkerProfile forWorkerUserProfileWorkerProfileUpdate(id, userPk, userProfilePk, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this worker profile.
final userPk = userPk_example; // String | 
final userProfilePk = userProfilePk_example; // String | 
final data = WorkerProfileForWrite(); // WorkerProfileForWrite | 

try { 
    final result = api_instance.forWorkerUserProfileWorkerProfileUpdate(id, userPk, userProfilePk, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserProfileWorkerProfileUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this worker profile. | 
 **userPk** | **String**|  | 
 **userProfilePk** | **String**|  | 
 **data** | [**WorkerProfileForWrite**](WorkerProfileForWrite.md)|  | 

### Return type

[**WorkerProfile**](WorkerProfile.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forWorkerUserRead**
> User forWorkerUserRead(id)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.

try { 
    final result = api_instance.forWorkerUserRead(id);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserRead: $e\n');
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

# **forWorkerUserUpdate**
> User forWorkerUserUpdate(id, data)



### Example 
```dart
import 'package:welfarebrothers_for_worker_api_client/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api_instance = ForWorkerApi();
final id = 56; // int | A unique integer value identifying this welfarebrothers_user.
final data = UserForWrite(); // UserForWrite | 

try { 
    final result = api_instance.forWorkerUserUpdate(id, data);
    print(result);
} catch (e) {
    print('Exception when calling ForWorkerApi->forWorkerUserUpdate: $e\n');
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

