import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IUserRepository implements IRepository {
  Future<WelfarebrothersUser> fetchUser();
  Future<WelfarebrothersUser> createUser(WelfarebrothersUser user);
  Future<WelfarebrothersUserProfile> fetchProfile(int userId);
  Future<WelfarebrothersUserProfile> createProfile(WelfarebrothersUserProfile profile);
  Future<WelfarebrothersUserProfile> updateProfile(WelfarebrothersUserProfile profile);
}
