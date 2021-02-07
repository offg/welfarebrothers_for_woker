import 'package:welfarebrothers_for_worker/domain/facility_user_link/entity.dart';
import 'package:welfarebrothers_for_worker/domain/facility_user_link/repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityUserLinkApiRepository implements IFacilityUserLinkRepository {
  WelfarebrothersApiClient _client;
  FacilityUserLinkApiRepository(this._client);
  @override
  Future<FacilityUserLink> createFacilityUserLink(FacilityUserLink facilityUserLink) async {
    return await _client.forWorkerApi.forWorkerFacilityUserLinksCreate(facilityUserLink.toWritable());
  }

  @override
  Future<FacilityUserLink> fetchFacilityUserLink(int id) async {
    return await _client.forWorkerApi.forWorkerFacilityUserLinksRead(id);
  }

  @override
  Future<List<FacilityUserLinkType>> fetchFacilityUserLinkTypes() async {
    return await _client.forWorkerApi.forWorkerFacilityUserLinkTypesList();
  }

  @override
  Future<List<FacilityUserLink>> fetchFacilityUserLinks({String facilityId}) async {
    return await _client.forWorkerApi.forWorkerFacilityUserLinksList(facilityAdministrationId: facilityId);
  }

  @override
  Future<FacilityUserLink> updateFacilityUserLink(FacilityUserLink facilityUserLink) async {
    return await _client.forWorkerApi.forWorkerFacilityUserLinksUpdate(facilityUserLink.id, facilityUserLink.toWritable());
  }
}
