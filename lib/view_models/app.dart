import 'package:welfarebrothers_for_worker/domain/role_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class AppViewModel extends WelfareBrothersViewModelBase {
  IRoleRepository _roleRepository;
  AppViewModel(this._roleRepository);

  List<Role> roles = new List<Role>();

  @override
  Future initialize() async {
    loading = true;
    this.roles = await _roleRepository.listRoles();
    loading = false;
  }
}
