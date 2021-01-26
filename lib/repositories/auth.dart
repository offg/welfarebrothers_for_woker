import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:welfarebrothers_for_worker/constants/auth.dart';
import 'package:welfarebrothers_for_worker/domain/auth/auth_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class AuthApiRepository implements IAuthRepository {
  WelfarebrothersApiClient _client;
  FlutterSecureStorage _secureStorage;
  AuthApiRepository(this._client, this._secureStorage);

  @override
  Future<WelfarebrothersTokenClaims> createAuthToken(WelfarebrothersTokenClaimsForWrite tokenClaims) async {
    return await _client.authApi.authTokenCreate(tokenClaims);
  }

  @override
  Future<TokenRefresh> refreshAuthToken(TokenRefresh data) async {
    return await _client.authApi.authTokenRefreshCreate(data);
  }

  Future<WelfarebrothersTokenClaims> _loadAuthTokenFromSecureStorage() async {
    if (await _secureStorage.containsKey(key: JWT_ACCESS_TOKEN_KEY) &&
        await _secureStorage.containsKey(key: JWT_REFRESH_TOKEN_KEY)) {
      String accessToken = await _secureStorage.read(key: JWT_ACCESS_TOKEN_KEY);
      String refreshToken = await _secureStorage.read(key: JWT_REFRESH_TOKEN_KEY);
      return WelfarebrothersTokenClaims(
        access: accessToken,
        refresh: refreshToken,
      );
    }
    return null;
  }

  Future<WelfarebrothersTokenClaims> _loadAuthTokenFromLocalStorage() async {
    if (window.localStorage.containsKey(JWT_ACCESS_TOKEN_KEY) && window.localStorage.containsKey(JWT_REFRESH_TOKEN_KEY)) {
      String accessToken = window.localStorage[JWT_ACCESS_TOKEN_KEY];
      String refreshToken = window.localStorage[JWT_REFRESH_TOKEN_KEY];
      return WelfarebrothersTokenClaims(access: accessToken, refresh: refreshToken);
    }
  }

  @override
  Future<WelfarebrothersTokenClaims> loadAuthToken() async {
    if (kIsWeb)
      return await _loadAuthTokenFromLocalStorage();
    else
      return await _loadAuthTokenFromSecureStorage();
  }

  @override
  Future saveAuthToken(WelfarebrothersTokenClaims token) async {
    if (kIsWeb) {
      window.localStorage.addAll({JWT_ACCESS_TOKEN_KEY: token.access, JWT_REFRESH_TOKEN_KEY: token.refresh});
    } else {
      await _secureStorage.write(key: JWT_ACCESS_TOKEN_KEY, value: token.access);
      await _secureStorage.write(key: JWT_REFRESH_TOKEN_KEY, value: token.refresh);
    }
  }
}
