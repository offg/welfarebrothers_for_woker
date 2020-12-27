import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:welfarebrothers_for_worker/domain/base.dart';

const String _API_ENDPOINT = 'welfarebrothers-api.herokuapp.com';
// const String _API_ENDPOINT = 'localhost';
const String _BASE_PATH = '/api/v0/';
// const int _BASE_PORT = 8000;
const int _BASE_PORT = null;
enum HttpMethod { GET, POST, PUT, DELETE, PATCH }

enum WelfareBrothersApiExceptionMessage { METHOD_NOT_DEFINED }

typedef T Factory<T extends WelfareBrothersModelBase>(Map<String, dynamic> json);

class WelfareBrothersApiResponse<T extends WelfareBrothersModelBase> {
  final int status;
  final String message;
  WelfareBrothersApiResponse(this.status, this.message);
  WelfareBrothersApiResponse.fromJson(Map<String, dynamic> json)
      : this.status = int.parse(json["status"]),
        this.message = json['message'];
}

class WelfareBrothersApiListResponse<T extends WelfareBrothersModelBase> extends WelfareBrothersApiResponse<T> {
  final List<T> result;
  WelfareBrothersApiListResponse(int status, String message, this.result) : super(status, message);
  WelfareBrothersApiListResponse.fromJson(Map<String, dynamic> json, Factory<T> factoryFn)
      : this.result = (json['result'] as List<dynamic>).map((e) => factoryFn(e)).toList(),
        super.fromJson(json);
}

class WelfareBrothersApiObjectResponse<T extends WelfareBrothersModelBase> extends WelfareBrothersApiResponse<T> {
  final T result;
  WelfareBrothersApiObjectResponse(int status, String message, this.result) : super(status, message);
  WelfareBrothersApiObjectResponse.fromJson(Map<String, dynamic> json, Factory factoryFn)
      : this.result = factoryFn(json['result']),
        super.fromJson(json);
}

class WelfareBrothersApiException extends Exception {
  factory WelfareBrothersApiException([var message]) => new WelfareBrothersApiException(message);
}

abstract class ApiClientContext {
  final int port;
  final String schema;
  final String basePath;
  final String host;
  ApiClientContext(this.port, this.schema, this.basePath, this.host);
}

class DefaultApiClientContext extends ApiClientContext {
  DefaultApiClientContext() : super(8000, 'http', '/api/v0/', 'localhost');
}

class WelfareBrothersApiClient {
  static WelfareBrothersApiClient _client;
  ApiClientContext _context;
  WelfareBrothersApiClient(this._context);
  static WelfareBrothersApiClient getInstance({ApiClientContext context}) {
    if (_client == null) {
      _client = new WelfareBrothersApiClient(context ?? DefaultApiClientContext());
    }
    return _client;
  }

  Map<String, String> buildHttpHeaders() {
    return {HttpHeaders.contentTypeHeader: 'application/json'};
  }

  Uri buildUri(String path,
      {Map<String, dynamic> queryParameters,
      endpoint = _API_ENDPOINT,
      String basePath = _BASE_PATH,
      int port = _BASE_PORT}) {
    return Uri(
      scheme: "https",
      host: endpoint,
      path: basePath + path,
      queryParameters: queryParameters,
      port: port,
    );
  }

  Future<dynamic> request<T extends WelfareBrothersApiResponse>(HttpMethod method, String path,
      {Map<String, dynamic> queryParameters, Map<String, dynamic> body}) async {
    var headers = buildHttpHeaders();
    var uri = buildUri(path, queryParameters: queryParameters);
    http.Response response;
    switch (method) {
      case HttpMethod.GET:
        response = await http.get(uri, headers: headers);
        break;
      case HttpMethod.PUT:
        response = await http.put(uri, headers: headers, body: body);
        break;
      case HttpMethod.DELETE:
        response = await http.delete(uri, headers: headers);
        break;
      case HttpMethod.PATCH:
        response = await http.patch(uri, headers: headers, body: body);
        break;
      case HttpMethod.POST:
        response = await http.post(uri, headers: headers, body: body);
        break;
      default:
        throw new WelfareBrothersApiException(WelfareBrothersApiExceptionMessage.METHOD_NOT_DEFINED);
    }
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body);
      case 400:
        return json.decode(response.body);
      case 500:
      default:
        return json.decode(response.body);
    }
  }
}
