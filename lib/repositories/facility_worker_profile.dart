import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityWorkerProfileApiRepository implements IFacilityWorkerProfileRepository {
  WelfarebrothersApiClient _client;
  FacilityWorkerProfileApiRepository(this._client);

  @override
  Future<FacilityWorkerProfile> createFacilityWorkerProfile(
      String facilityId, FacilityWorkerProfile facilityWorkerProfile) async {
    var created = await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesCreate(
      facilityId,
      facilityWorkerProfile.toWritable(),
    );
    return created;
  }

  @override
  Future<FacilityWorkerProfile> fetchFacilityWorkerProfile(
    String facilityId,
    int facilityWorkerProfileId,
  ) async {
    var response = await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesRead(
      facilityId,
      facilityWorkerProfileId,
    );
    return response;
  }

  @override
  Future<List<FacilityWorkerProfile>> fetchFacilityWorkerProfiles(String facilityId) async {
    var response = await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesList(facilityId);
    return response;
  }

  @override
  Future<FacilityWorkerProfile> updateFacilityWorkerProfile(
    String facilityId,
    int facilityWorkerProfileId,
    FacilityWorkerProfile facilityWorkerProfile,
  ) async {
    var response = await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesUpdate(
      facilityId,
      facilityWorkerProfileId,
      facilityWorkerProfile.toWritable(),
    );
    return response;
  }

  @override
  Future deleteFacilityWorkerProfile(String facilityId, int facilityWorkerProfileId) async {
    await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesDelete(
      facilityId,
      facilityWorkerProfileId,
    );
    return;
  }

  @override
  Future<DayOffRequest> createDayOffRequest(
    String facilityId,
    int facilityWorkerProfileId,
    DayOffRequest dayOffRequest,
  ) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsCreate(
      facilityId,
      facilityWorkerProfileId.toString(),
      dayOffRequest.toWritable(),
    );
  }

  @override
  Future<WorkingHoursConfig> createWorkingHoursConfig(
    String facilityId,
    int facilityWorkerProfileId,
    WorkingHoursConfig workingHoursConfig,
  ) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigCreate(
      facilityId,
      facilityWorkerProfileId.toString(),
      workingHoursConfig.toWritable(),
    );
  }

  @override
  Future deleteDayOffRequest(String facilityId, int facilityWorkerProfileId, int dayOffRequestId) async {
    await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsDelete(
      facilityId,
      facilityWorkerProfileId.toString(),
      dayOffRequestId,
    );
  }

  @override
  Future deleteWorkingHoursConfig(String facilityId, int facilityWorkerProfileId, int workingHoursConfigId) async {
    await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigDelete(
      facilityId,
      facilityWorkerProfileId.toString(),
      workingHoursConfigId,
    );
  }

  @override
  Future<DayOffRequest> updateDayOffRequest(
    String facilityId,
    int facilityWorkerProfileId,
    int dayOffRequestId,
    DayOffRequest dayOffRequest,
  ) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesDayOffRequestsUpdate(
      facilityId,
      facilityWorkerProfileId.toString(),
      dayOffRequestId,
      dayOffRequest.toWritable(),
    );
  }

  @override
  Future<WorkingHoursConfig> updateWorkingHoursConfig(String facilityId, int facilityWorkerProfileId,
      int workingHoursConfigId, WorkingHoursConfig workingHoursConfig) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkerProfilesWorkingHoursConfigUpdate(
      facilityId,
      facilityWorkerProfileId.toString(),
      workingHoursConfigId,
      workingHoursConfig.toWritable(),
    );
  }
}
