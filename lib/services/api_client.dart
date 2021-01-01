import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WelfarebrothersApiClient {
  ApiClient _apiClient;
  FacilitiesApi _facilitiesApi;
  ForWorkerApi _forWorkerApi;
  UsersApi _usersApi;

  FacilitiesApi get facilitiesApi => _facilitiesApi;
  ForWorkerApi get forWorkerApi => _forWorkerApi;
  UsersApi get usersApi => _usersApi;

  WelfarebrothersApiClient() {
    _apiClient = locator<ApiClient>();
    _facilitiesApi = FacilitiesApi(_apiClient);
    _forWorkerApi = ForWorkerApi(_apiClient);
    _usersApi = UsersApi(_apiClient);
  }
}
