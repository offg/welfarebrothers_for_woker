import 'package:welfarebrothers_for_worker_api_client/api.dart';

import '../repository.dart';

abstract class IFacilityRepository implements IRepository {
  Future<List<FacilityForWorker>> fetchFacilities();
  Future<FacilityForWorker> fetchFacility(
    String facilityId,
  );
}
