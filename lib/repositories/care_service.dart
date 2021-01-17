import 'package:welfarebrothers_for_worker/domain/facility/care_service_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class CareServiceApiRepository implements ICareServiceRepository {
  final WelfarebrothersApiClient _client;
  CareServiceApiRepository(this._client);

  @override
  Future<List<CareServiceCategory>> fetchCareServiceCategories() async {
    return await _client.careServiceCategoriesApi.careServiceCategoriesList();
  }

  @override
  Future<List<CareServiceGroup>> fetchCareServiceGroups(String categoryId) async {
    return await _client.careServiceCategoriesApi.careServiceCategoriesGroupsList(categoryId);
  }

  @override
  Future<List<CareService>> fetchCareServices(String categoryId, String groupId) async {
    return await _client.careServiceCategoriesApi.careServiceCategoriesGroupsServicesList(categoryId, groupId);
  }
}
