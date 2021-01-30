import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class UserApiRepository implements IUserRepository {
  WelfarebrothersApiClient _client;
  UserApiRepository(this._client);

  @override
  Future<WelfarebrothersUserProfile> createProfile(WelfarebrothersUserProfile profile) async {}

  @override
  Future<WelfarebrothersUserProfile> fetchProfile(int userId) async {
    var res = await _client.meApi.meProfileList(userId.toString());
    return res.first;
  }

  @override
  Future<User> fetchUser() async {
    var result = await _client.meApi.meRead(0);
    return result;
  }

  @override
  Future<WelfarebrothersUserProfile> updateProfile(WelfarebrothersUserProfile profile) async {}

  @override
  Future<WelfarebrothersUser> createUser(WelfarebrothersUser user) async {}
}
