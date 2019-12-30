import 'dart:convert';
import 'dart:io';

import 'package:ebuy_flutter/network_api/app_exception.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class ApiBaseHelper {
  final String _baseUrl = "http://api.themoviedb.org/3/";

  Future<dynamic> get(String endUrl) async {
    Fluttertoast.showToast(msg: "get method is executing");
    var responseJson;
    try {
      final response = await http.get(_baseUrl + endUrl);
      responseJson = _returnResposnse(response);
    } on SocketException {
      //Fluttertoast.showToast(msg: "No Interent Connection");
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }


  Future<dynamic> post(String endUrl, dynamic body) async {
    Fluttertoast.showToast(msg: "post method is executing");
    var responseJson;
    try {
      final response = await http.post(_baseUrl + endUrl, body: body);
      responseJson = _returnResposnse(response);
    } on SocketException {
      //Fluttertoast.showToast(msg: "No Interent Connection");
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResposnse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        Fluttertoast.showToast(msg: responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException('Error occured while Communication with '
            'Server with StatusCode : ${response.statusCode}');
    }
  }
}
