import 'package:welfarebrothers_for_worker/domain/base.dart';
import 'package:welfarebrothers_for_worker/services/api/client.dart';

abstract class ApiResource<T extends WelfareBrothersModelBase> {
  WelfareBrothersApiClient _client;
  String get path;
  ApiResource parent;
  request(HttpMethod method, {Map<String, dynamic> param, Map<String, dynamic> body}) {
    String _path;
    if (parent != null) {
      _path = parent.path + path;
    } else {
      _path = path;
    }
    // _client.request(method, )
  }
}
