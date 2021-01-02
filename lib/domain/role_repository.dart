import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IRoleRepository extends IRepository {
  Future<List<Role>> listRoles();
}
