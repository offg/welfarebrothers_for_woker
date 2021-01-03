import 'package:welfarebrothers_for_worker/domain/role_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class AppViewModel extends WelfareBrothersViewModelBase {
  IRoleRepository _roleRepository;
  AppViewModel(this._roleRepository);

  List<Role> roles = new List<Role>();
  Map<String, Role> roleById;

  @override
  Future initialize() async {
    loading = true;
    this.roles = await _roleRepository.listRoles();
    this.roleById = Map<String, Role>.fromEntries(this.roles.map((e) => MapEntry(e.id, e)));
    loading = false;
  }
}
