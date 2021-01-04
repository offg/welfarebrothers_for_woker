import 'package:welfarebrothers_for_worker/domain/role/role_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class RoleApiRepository extends IRoleRepository {
  final WelfarebrothersApiClient _client;
  RoleApiRepository(this._client);

  @override
  Future<List<Role>> listRoles() async {
    return await _client.forWorkerApi.forWorkerRolesList();
  }
}
