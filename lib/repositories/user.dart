import 'package:welfarebrothers_for_worker/domain/user/user.dart';
import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class UserApiRepository implements IUserRepository {
  WelfarebrothersApiClient _client;
  UserApiRepository(this._client);

  @override
  Future<WelfarebrothersUserProfile> createProfile(WelfarebrothersUserProfile profile) async {
    return await _client.meApi.meProfileCreate(profile.userId, profile.toWritable());
  }

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
  Future<User> createUser(String username, String password) async {
    return await _client.meApi.meCreate(UserForWrite(username: username, password: password));
  }
}
