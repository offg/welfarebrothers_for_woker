import 'package:welfarebrothers_for_worker_api_client/api.dart';

import '../repository.dart';

abstract class IFacilityRepository implements IRepository {
  Future<List<FacilityForWorker>> fetchFacilities({
    String prefecture,
    String city,
    String careServiceCategory,
    String careServiceGroup,
    String keyword,
  });
  Future<FacilityForWorker> fetchFacility(
    String facilityId,
  );
}
