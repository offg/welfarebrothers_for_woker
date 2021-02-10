import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WelfarebrothersApiClient {
  ApiClient _apiClient;
  AuthApi _authApi;
  FacilitiesApi _facilitiesApi;
  ForWorkerApi _forWorkerApi;
  MeApi _meApi;
  CareServiceCategoriesApi _careServiceCategoriesApi;
  PrefecturesApi _prefecturesApi;

  AuthApi get authApi => _authApi;
  FacilitiesApi get facilitiesApi => _facilitiesApi;
  ForWorkerApi get forWorkerApi => _forWorkerApi;
  MeApi get meApi => _meApi;
  CareServiceCategoriesApi get careServiceCategoriesApi => _careServiceCategoriesApi;
  PrefecturesApi get prefecturesApi => _prefecturesApi;
  ApiClient get apiClient => _apiClient;

  WelfarebrothersApiClient() {
    _apiClient = locator<ApiClient>();
    _authApi = AuthApi(_apiClient);
    _facilitiesApi = FacilitiesApi(_apiClient);
    _forWorkerApi = ForWorkerApi(_apiClient);
    _meApi = MeApi(_apiClient);
    _careServiceCategoriesApi = CareServiceCategoriesApi(_apiClient);
    _prefecturesApi = PrefecturesApi(_apiClient);
  }
}
