import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityApiRepository extends IFacilityRepository {
  final WelfarebrothersApiClient _client;
  FacilityApiRepository(this._client);

  @override
  Future<List<FacilityForWorker>> fetchFacilities() async {
    return await _client.forWorkerApi.forWorkerFacilitiesList();
  }

  @override
  Future<FacilityForWorker> fetchFacility(String facilityId) async {
    return await _client.forWorkerApi.forWorkerFacilitiesRead(facilityId);
  }
}
