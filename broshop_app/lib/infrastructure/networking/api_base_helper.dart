// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'app_exception.dart';

class ApiBaseHelper {
  Map<String, String> commonHeaders = {
    'Content-Type': 'application/json; charset=utf-8',
  };

  Future<dynamic> get({
    required Uri url,
  }) async {
    var responseJson;
    try {
      final response = await http.get(url, headers: commonHeaders);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post({required Uri url, required Map body}) async {
    var responseJson;
    try {
      final response =
          await http.post(url, body: json.encode(body), headers: commonHeaders);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> put({required Uri url, required Map body}) async {
    var responseJson;
    try {
      final response =
          await http.put(url, body: json.encode(body), headers: commonHeaders);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> delete({required Uri url, required Map body}) async {
    var responseJson;
    try {
      final response = await http.delete(url,
          body: json.encode(body), headers: commonHeaders);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());

        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorizedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
