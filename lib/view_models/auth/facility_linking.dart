import 'package:welfarebrothers_for_worker/domain/facility/facility.dart';
import 'package:welfarebrothers_for_worker/domain/facility_user_link/repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityLinkingViewModel extends WelfareBrothersViewModelBase {
  IFacilityUserLinkRepository _facilityUserLinkRepository;
  FacilityLinkingViewModel(this._facilityUserLinkRepository);
  List<FacilityUserLinkType> facilityUserLinkTypes;
  List<FacilityUserLink> facilityUserLinksForFacility = new List();
  List<FacilityUserLink> facilityUserLinksForWorker = new List();

  @override
  Future initialize() async {
    loading = true;
    await fetchFacilityUserLinkTypes();
    loading = false;
  }

  Future fetchFacilityUserLinkTypes() async {
    loading = true;
    facilityUserLinkTypes = await _facilityUserLinkRepository.fetchFacilityUserLinkTypes();
    loading = false;
  }

  Future fetchFacilityUserLinksForWorker() async {
    if (authenticated && ready && appViewModel.workerProfile != null)
      facilityUserLinksForWorker =
          await _facilityUserLinkRepository.fetchFacilityUserLinks(workerProfileId: appViewModel.workerProfile.id);
  }

  Future fetchFacilityUserLinks(String facilityId) async {
    loading = true;
    facilityUserLinksForFacility = await _facilityUserLinkRepository.fetchFacilityUserLinks(facilityId: facilityId);
    await fetchFacilityUserLinksForWorker();
    loading = false;
  }

  FacilityUserLink _createFacilityUserLinkFor(FacilityForWorker facility, WorkerProfile workerProfile, String type) =>
      FacilityUserLink(
        facilityAdministration: FacilityAdministration(
          id: facility.id,
          facilityId: facility.id,
          facility: facility.asNormal(),
        ),
        type: facilityUserLinkTypes.singleWhere((element) => element.id == type),
        state: FacilityUserLinkState(id: "pending"),
        workerProfile: workerProfile,
      );

  Future linkToFacilityAsAdministrator(FacilityForWorker facility, WorkerProfile workerProfile) async {
    loading = true;
    await _facilityUserLinkRepository.createFacilityUserLink(_createFacilityUserLinkFor(facility, workerProfile, "admin"));
    await fetchFacilityUserLinks(facility.id);
    loading = false;
  }

  Future linkToFacilityAsWorker(FacilityForWorker facility, WorkerProfile workerProfile) async {
    loading = true;
    await _facilityUserLinkRepository.createFacilityUserLink(_createFacilityUserLinkFor(facility, workerProfile, "worker"));
    await fetchFacilityUserLinks(facility.id);
    loading = false;
  }
}
