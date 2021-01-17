import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityApiRepository extends IFacilityRepository {
  final WelfarebrothersApiClient _client;
  FacilityApiRepository(this._client);

  @override
  Future<List<FacilityForWorker>> fetchFacilities({
    String prefecture,
    String city,
    String careServiceCategory,
    String careServiceGroup,
  }) async {
    return await _client.forWorkerApi.forWorkerFacilitiesList(
      prefecture: prefecture,
      city: city,
      careServiceGroupCategory: careServiceCategory,
      careServiceGroup: careServiceGroup,
    );
  }

  @override
  Future<FacilityForWorker> fetchFacility(String facilityId) async {
    return await _client.forWorkerApi.forWorkerFacilitiesRead(facilityId);
  }
}
