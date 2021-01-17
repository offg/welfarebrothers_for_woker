import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WelfarebrothersApiClient {
  ApiClient _apiClient;
  FacilitiesApi _facilitiesApi;
  ForWorkerApi _forWorkerApi;
  UsersApi _usersApi;
  CareServiceCategoriesApi _careServiceCategoriesApi;
  PrefecturesApi _prefecturesApi;

  FacilitiesApi get facilitiesApi => _facilitiesApi;
  ForWorkerApi get forWorkerApi => _forWorkerApi;
  UsersApi get usersApi => _usersApi;
  CareServiceCategoriesApi get careServiceCategoriesApi => _careServiceCategoriesApi;
  PrefecturesApi get prefecturesApi => _prefecturesApi;

  WelfarebrothersApiClient() {
    _apiClient = locator<ApiClient>();
    _facilitiesApi = FacilitiesApi(_apiClient);
    _forWorkerApi = ForWorkerApi(_apiClient);
    _usersApi = UsersApi(_apiClient);
    _careServiceCategoriesApi = CareServiceCategoriesApi(_apiClient);
    _prefecturesApi = PrefecturesApi(_apiClient);
  }
}
