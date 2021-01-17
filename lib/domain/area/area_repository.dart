import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IAreaRepository extends IRepository {
  Future<List<Prefecture>> fetchPrefectures();
  Future<List<City>> fetchCities(String prefectureId);
}
