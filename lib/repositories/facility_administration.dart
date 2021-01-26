import 'package:welfarebrothers_for_worker/domain/facility_administration/facility_administration_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityAdministrationApiRepository implements IFacilityAdministrationRepository {
  WelfarebrothersApiClient _client;
  FacilityAdministrationApiRepository(this._client);

  @override
  Future<List<FacilityAdministration>> fetchFacilityAdministrations() async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsList();
  }
}
