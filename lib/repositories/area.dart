import 'package:welfarebrothers_for_worker/domain/area/area_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class AreaApiRepository implements IAreaRepository {
  final WelfarebrothersApiClient _client;
  AreaApiRepository(this._client);
  @override
  Future<List<City>> fetchCities(String prefectureId) async {
    return await _client.prefecturesApi.prefecturesCitiesList(prefectureId);
  }

  @override
  Future<List<Prefecture>> fetchPrefectures() async {
    return await _client.prefecturesApi.prefecturesList();
  }
}
