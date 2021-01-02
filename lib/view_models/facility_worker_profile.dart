import 'package:welfarebrothers_for_worker/domain/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityWorkerProfileViewModel extends WelfareBrothersViewModelBase {
  IFacilityWorkerProfileRepository _repository;
  List<FacilityWorkerProfile> facilityWorkerProfiles;
  String facilityId;
  FacilityWorkerProfileViewModel(this._repository);

  Future initializeWithFacility(String facilityId) async {
    this.facilityId = facilityId;
    await initialize();
  }

  @override
  Future initialize() async {
    if (facilityId == null) return;
    loading = true;
    facilityWorkerProfiles = await _repository.fetchFacilityWorkerProfiles(facilityId);
    loading = false;
  }

  Future createFacilityWorkerProfile(FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var createdFacilityWorkerProfile = await _repository.createFacilityWorkerProfile(
      facilityId,
      facilityWorkerProfile,
    );
    facilityWorkerProfiles.add(createdFacilityWorkerProfile);
    loading = false;
  }

  Future updateFacilityWorkerProfile(FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var updatedFacilityWorkerProfile =
        await _repository.updateFacilityWorkerProfile(facilityId, facilityWorkerProfile.id, facilityWorkerProfile);
    int index = facilityWorkerProfiles.indexWhere((element) => element.id == facilityWorkerProfile.id);
    facilityWorkerProfiles.replaceRange(index, index + 1, [updatedFacilityWorkerProfile]);
    loading = false;
  }

  Future deleteFacilityWorkerProfile(int facilityWorkerProfileId) async {
    loading = true;
    await _repository.deleteFacilityWorkerProfile(facilityId, facilityWorkerProfileId);
    loading = false;
  }

  _updateFacilityWorkerProfile(FacilityWorkerProfile facilityWorkerProfile) {
    for (var i = 0; i < facilityWorkerProfiles.length; i++) {
      if (facilityWorkerProfiles[i].id == facilityWorkerProfile.id) facilityWorkerProfiles[i] = facilityWorkerProfile;
    }
  }

  _addDayOffRequest(FacilityWorkerProfile facilityWorkerProfile, DayOffRequest dayOffRequest) {
    List<DayOffRequest> newDayOffRequests = List<DayOffRequest>.from(facilityWorkerProfile.dayOffRequests);
    newDayOffRequests.add(dayOffRequest);
    facilityWorkerProfile.dayOffRequests = newDayOffRequests;
    _updateFacilityWorkerProfile(facilityWorkerProfile);
  }

  _deleteDayOffRequest(FacilityWorkerProfile facilityWorkerProfile, DayOffRequest dayOffRequest) {
    List<DayOffRequest> newDayOffRequests = List<DayOffRequest>.from(facilityWorkerProfile.dayOffRequests);
    newDayOffRequests.remove(dayOffRequest);
    facilityWorkerProfile.dayOffRequests = newDayOffRequests;
    _updateFacilityWorkerProfile(facilityWorkerProfile);
  }

  Future createDayOffRequest(FacilityWorkerProfile facilityWorkerProfile, DayOffRequest dayOffRequest) async {
    loading = true;
    DayOffRequest newObject = await _repository.createDayOffRequest(
      facilityWorkerProfile.facilityAdministrationId,
      facilityWorkerProfile.id,
      dayOffRequest,
    );
    _addDayOffRequest(facilityWorkerProfile, newObject);
    loading = false;
  }

  Future deleteDayOffRequest(FacilityWorkerProfile facilityWorkerProfile, DayOffRequest dayOffRequest) async {
    loading = true;
    await _repository.deleteDayOffRequest(
      facilityWorkerProfile.facilityAdministrationId,
      facilityWorkerProfile.id,
      dayOffRequest.id,
    );
    _deleteDayOffRequest(facilityWorkerProfile, dayOffRequest);
    loading = false;
  }

  Future updateOrCreateWorkingHoursConfig(
      FacilityWorkerProfile facilityWorkerProfile, WorkingHoursConfig workingHoursConfig) async {
    loading = true;

    WorkingHoursConfig newObject;
    if (workingHoursConfig.id == null) {
      newObject = await _repository.createWorkingHoursConfig(
          facilityWorkerProfile.facilityAdministration.facility.id, facilityWorkerProfile.id, workingHoursConfig);
    } else {
      newObject = await _repository.updateWorkingHoursConfig(
        facilityId,
        facilityWorkerProfile.id,
        workingHoursConfig.id,
        workingHoursConfig,
      );
    }
    facilityWorkerProfile.workingHoursConfig = newObject;
    _updateFacilityWorkerProfile(facilityWorkerProfile);
    loading = false;
  }
}
