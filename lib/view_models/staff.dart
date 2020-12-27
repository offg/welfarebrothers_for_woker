import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';

class StaffViewModel extends WelfareBrothersViewModelBase {
  IFacilityWorkerProfileRepository _repository;
  final String facilityId;
  List<FacilityWorkerProfile> facilityWorkerProfiles;
  StaffViewModel(this.facilityId, this._repository);

  @override
  Future initialize() async {
    facilityWorkerProfiles = [
      FacilityWorkerProfile.withEmpty(),
      FacilityWorkerProfile.withEmpty(),
    ];
    // await fetchFacilityWorkerProfiles(facilityId);
  }

  Future fetchFacilityWorkerProfiles(String facilityId) async {
    loading = true;
    var facilityWorkerProfiles = await _repository.fetchFacilityWorkerProfilesForFacility(facilityId);
    facilityWorkerProfiles = facilityWorkerProfiles;
    loading = false;
  }

  Future createFacilityWorkerProfile(String facilityId, FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var createdFacilityWorkerProfile =
        await _repository.createFacilityWorkerProfileForFacility(facilityId, facilityWorkerProfile);
    facilityWorkerProfiles.add(createdFacilityWorkerProfile);
    loading = false;
  }

  Future updateFacilityWorkerProfile(String facilityId, FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var updatedFacilityWorkerProfile = await _repository.updateFacilityWorkerProfileForFacility(
        facilityId, facilityWorkerProfile.id, facilityWorkerProfile);
    int index = facilityWorkerProfiles.indexWhere((element) => element.id == facilityWorkerProfile.id);
    facilityWorkerProfiles.replaceRange(index, index + 1, [updatedFacilityWorkerProfile]);
    loading = false;
  }

  Future deleteFacilityWorkerProfile(String facilityId, int facilityWorkerProfileId) async {
    loading = true;
    await _repository.deleteFacilityWorkerProfileForFacility(facilityId, facilityWorkerProfileId);
    loading = false;
  }
}
