import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IUserRepository implements IRepository {
  Future<User> fetchUser();
  Future<User> createUser(String username, String password);
  Future<WelfarebrothersUserProfile> fetchProfile(int userId);
  Future<WelfarebrothersUserProfile> createProfile(WelfarebrothersUserProfile profile);
  Future<WelfarebrothersUserProfile> updateProfile(WelfarebrothersUserProfile profile);
}
