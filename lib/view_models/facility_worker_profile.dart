import 'package:welfarebrothers_for_worker/domain/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityWorkerProfileViewModel extends WelfareBrothersViewModelBase {
  IFacilityWorkerProfileRepository _repository;
  final String facilityId;
  List<FacilityWorkerProfile> facilityWorkerProfiles;
  FacilityWorkerProfileViewModel(this.facilityId, this._repository);

  @override
  Future initialize() async {
    loading = true;
    facilityWorkerProfiles = await _repository.fetchFacilityWorkerProfiles(facilityId);
    loading = false;
  }

  Future createFacilityWorkerProfile(String facilityId, FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var createdFacilityWorkerProfile = await _repository.createFacilityWorkerProfile(
      facilityId,
      facilityWorkerProfile,
    );
    facilityWorkerProfiles.add(createdFacilityWorkerProfile);
    loading = false;
  }

  Future updateFacilityWorkerProfile(String facilityId, FacilityWorkerProfile facilityWorkerProfile) async {
    loading = true;
    var updatedFacilityWorkerProfile =
        await _repository.updateFacilityWorkerProfile(facilityId, facilityWorkerProfile.id, facilityWorkerProfile);
    int index = facilityWorkerProfiles.indexWhere((element) => element.id == facilityWorkerProfile.id);
    facilityWorkerProfiles.replaceRange(index, index + 1, [updatedFacilityWorkerProfile]);
    loading = false;
  }

  Future deleteFacilityWorkerProfile(String facilityId, int facilityWorkerProfileId) async {
    loading = true;
    await _repository.deleteFacilityWorkerProfile(facilityId, facilityWorkerProfileId);
    loading = false;
  }
}
