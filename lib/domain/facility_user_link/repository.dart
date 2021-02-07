import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IFacilityUserLinkRepository implements IRepository {
  Future<List<FacilityUserLinkType>> fetchFacilityUserLinkTypes();
  Future<List<FacilityUserLink>> fetchFacilityUserLinks({String facilityId});
  Future<FacilityUserLink> fetchFacilityUserLink(int id);
  Future<FacilityUserLink> createFacilityUserLink(FacilityUserLink facilityUserLink);
  Future<FacilityUserLink> updateFacilityUserLink(FacilityUserLink facilityUserLink);
}
