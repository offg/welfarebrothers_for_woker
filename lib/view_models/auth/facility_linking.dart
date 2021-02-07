import 'package:welfarebrothers_for_worker/domain/facility/facility.dart';
import 'package:welfarebrothers_for_worker/domain/facility_user_link/repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityLinkingViewModel extends WelfareBrothersViewModelBase {
  IFacilityUserLinkRepository _facilityUserLinkRepository;
  FacilityLinkingViewModel(this._facilityUserLinkRepository);
  List<FacilityUserLinkType> facilityUserLinkTypes;
  List<FacilityUserLink> facilityUserLinks;

  @override
  Future initialize() async {
    loading = true;
    await _facilityUserLinkRepository.fetchFacilityUserLinkTypes();
    loading = false;
  }

  Future fetchFacilityUserLinkTypes() async {
    loading = true;
    loading = false;
  }

  Future fetchFacilityUserLinksForFacility(String facilityId) async {
    loading = true;
    facilityUserLinks = await _facilityUserLinkRepository.fetchFacilityUserLinks(facilityId: facilityId);
    loading = false;
  }

  FacilityUserLink _createFacilityUserLinkFor(FacilityForWorker facility, WorkerProfile workerProfile, String type) =>
      FacilityUserLink(
        facilityAdministration: FacilityAdministration(
          facilityId: facility.id,
          facility: facility.asNormal(),
        ),
        type: facilityUserLinkTypes.singleWhere((element) => element.id == type),
        workerProfile: workerProfile,
      );

  Future linkToFacilityAsAdministrator(FacilityForWorker facility, WorkerProfile workerProfile) async {
    loading = true;
    await _facilityUserLinkRepository.createFacilityUserLink(_createFacilityUserLinkFor(facility, workerProfile, "admin"));
    loading = false;
  }

  Future linkToFacilityAsWorker(FacilityForWorker facility, WorkerProfile workerProfile) async {
    loading = true;
    await _facilityUserLinkRepository.createFacilityUserLink(_createFacilityUserLinkFor(facility, workerProfile, "worker"));
    loading = false;
  }
}
