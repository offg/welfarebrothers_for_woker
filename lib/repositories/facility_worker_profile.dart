import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/repository.dart';
import 'package:welfarebrothers_for_worker/services/api/v0.dart';

class FacilityWorkerProfileApiRepository implements IFacilityWorkerProfileRepository {
  WelfareBrothersApiClientV0 _client;
  FacilityWorkerProfileApiRepository(this._client);

  @override
  Future<FacilityWorkerProfile> createFacilityWorkerProfileForFacility(
      String facilityId, FacilityWorkerProfile facilityWorkerProfile) async {
    var response = await _client.createFacilityWorkerProfiles(facilityId, facilityWorkerProfile);
    return response.result;
  }

  @override
  Future<FacilityWorkerProfile> fetchFacilityWorkerProfileForFacility(
    String facilityId,
    int facilityWorkerProfileId,
  ) async {
    var response = await _client.fetchFacilityWorkerProfile(facilityId, facilityWorkerProfileId);
    return response.result;
  }

  @override
  Future<List<FacilityWorkerProfile>> fetchFacilityWorkerProfilesForFacility(String facilityId) async {
    var response = await _client.fetchFacilityWorkerProfiles(facilityId);
    return response.result;
  }

  @override
  Future<FacilityWorkerProfile> fetchMyFacilityWorkerProfile(int facilityWorkerProfileId) async {
    var response = await _client.fetchMyFacilityWorkerProfile(facilityWorkerProfileId);
    return response.result;
  }

  @override
  Future<FacilityWorkerProfile> updateFacilityWorkerProfileForFacility(
    String facilityId,
    int facilityWorkerProfileId,
    FacilityWorkerProfile facilityWorkerProfile,
  ) async {
    var response = await _client.updateFacilityWorkerProfile(facilityId, facilityWorkerProfileId, facilityWorkerProfile);
    return response.result;
  }

  @override
  Future deleteFacilityWorkerProfileForFacility(String facilityId, int facilityWorkerProfileId) async {
    var response = await _client.deleteFacilityWorkerProfile(facilityId, facilityWorkerProfileId);
    return;
  }
}
