import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:getx_mvvm_architecture/data/app_exceptions.dart';
import 'package:http/http.dart';

import '../../data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    dynamic responseJSON;
    try {
      final response = await get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJSON = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeOutException('');
    }

    return responseJSON;
  }


  @override
  Future postApi(String url, dynamic data) async {
    print(data);
    dynamic responseJSON;
    try {
      final response = await post(Uri.parse(url), body: data).timeout(const Duration(seconds: 10));
      responseJSON = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeOutException('');
    }
    print(responseJSON);
    return responseJSON;
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJSON = jsonDecode(response.body);
        return responseJSON;

      case 400:
        throw InvalidUrlException();

      default:
        throw FetchDataException(
            "Error occurred while communication with server ${response.statusCode}");
    }
  }




}
