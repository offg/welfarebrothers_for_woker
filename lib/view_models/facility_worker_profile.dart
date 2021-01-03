import 'package:welfarebrothers_for_worker/domain/facility_administration.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityWorkerProfileViewModel extends WelfareBrothersViewModelBase {
  IFacilityWorkerProfileRepository _repository;
  List<FacilityWorkerProfile> facilityWorkerProfiles;
  FacilityAdministration facilityAdministration;
  FacilityWorkerProfileViewModel(this._repository);

  Future initializeWithFacility(FacilityAdministration facilityAdministration) async {
    this.facilityAdministration = facilityAdministration;
    await initialize();
  }

  @override
  Future initialize() async {
    if (facilityAdministration == null) return;
    loading = true;
    await _fetchFacilityProfiles();
    loading = false;
  }

  Future _fetchFacilityProfiles() async {
    loading = true;
    facilityWorkerProfiles = await _repository.fetchFacilityWorkerProfiles(facilityAdministration.id);
    loading = false;
  }

  Future updateOrCreateFacilityWorkerProfile(FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var fn = facilityWorkerProfile.id == null ? createFacilityWorkerProfile : updateFacilityWorkerProfile;
    await fn(facilityWorkerProfile);
    await updateOrCreateWorkingHoursConfig(facilityWorkerProfile, facilityWorkerProfile.workingHoursConfig);
    loading = false;
  }

  Future createFacilityWorkerProfile(FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var createdFacilityWorkerProfile = await _repository.createFacilityWorkerProfile(
      facilityAdministration.id,
      facilityWorkerProfile,
    );
    facilityWorkerProfile.id = createdFacilityWorkerProfile.id;
    facilityWorkerProfile.workingHoursConfig.facilityWorkerProfileId = createdFacilityWorkerProfile.id;

    await _fetchFacilityProfiles();
    loading = false;
  }

  Future updateFacilityWorkerProfile(FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var updatedFacilityWorkerProfile = await _repository.updateFacilityWorkerProfile(
        facilityAdministration.id, facilityWorkerProfile.id, facilityWorkerProfile);
    _updateFacilityWorkerProfile(updatedFacilityWorkerProfile);
    loading = false;
  }

  Future deleteFacilityWorkerProfile(int facilityWorkerProfileId) async {
    loading = true;
    await _repository.deleteFacilityWorkerProfile(facilityAdministration.id, facilityWorkerProfileId);
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
    FacilityWorkerProfile facilityWorkerProfile,
    WorkingHoursConfig workingHoursConfig,
  ) async {
    loading = true;

    WorkingHoursConfig newObject;
    if (workingHoursConfig.id == null) {
      newObject = await _repository.createWorkingHoursConfig(
        facilityWorkerProfile.facilityAdministrationId,
        facilityWorkerProfile.id,
        workingHoursConfig,
      );
    } else {
      newObject = await _repository.updateWorkingHoursConfig(
        facilityWorkerProfile.facilityAdministrationId,
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
