import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../../config/root_api.dart';
import '../response/app_exception.dart';
import 'base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiService {
  @override
  Future getResponse(
      String url, Map? headers, String? bearToken, String? endPoints) async {
    var uri = Uri.parse("$SERVER_BASE");
    try {
      var response =
          await http.get(uri).timeout(Duration(milliseconds: TIME_OUT));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  @override
  Future postResponse(String url, Map<String, String>? headers, Map jsonBody,
      String? bearToken, String? endPoints) async {
    var uri = Uri.parse("$SERVER_BASE");
    var body = json.encode(jsonBody);
    try {
      var response = await http
          .post(
            uri,
            body: body,
            headers: headers,
          )
          .timeout(Duration(milliseconds: TIME_OUT));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  @override
  Future deleteResponse(String url, Map<String, String>? headers, int id,
      String bearToken) async {
    var uri = Uri.parse("$SERVER_BASE$id");
    try {
      var response = await http
          .delete(
            uri,
            headers: headers,
          )
          .timeout(Duration(milliseconds: TIME_OUT));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  @override
  Future putResponse(
      String url, Map<String, String> headers, String? bearToken) async {
    var uri = Uri.parse("$SERVER_BASE");
    try {
      var response = await http
          .put(
            uri,
            headers: headers,
          )
          .timeout(Duration(milliseconds: TIME_OUT));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
      case 201:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
      case 400:
        throw BadRequestException(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 401:
      case 403:
        throw UnAuthorizedException(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 422:
        throw BadRequestException(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured with code : ${response.statusCode}',
            response.request!.url.toString());
    }
  }
}
