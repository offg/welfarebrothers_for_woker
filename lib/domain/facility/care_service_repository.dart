import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class ICareServiceRepository implements IRepository {
  Future<List<CareServiceCategory>> fetchCareServiceCategories();
  Future<List<CareServiceGroup>> fetchCareServiceGroups(String categoryId);
  Future<List<CareService>> fetchCareServices(String categoryId, String groupId);
}
