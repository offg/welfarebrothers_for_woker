import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IAuthRepository implements IRepository {
  Future saveAuthToken(WelfarebrothersTokenClaims token);
  Future<WelfarebrothersTokenClaims> loadAuthToken();
  Future<WelfarebrothersTokenClaims> createAuthToken(WelfarebrothersTokenClaimsForWrite tokenClaims);
  Future<TokenRefresh> refreshAuthToken(TokenRefresh data);
}
