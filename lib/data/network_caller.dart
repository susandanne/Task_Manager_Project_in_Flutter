import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:task_manager_project_in_flutter/response_object.dart';

class NetworkCaller {
  static Future<ResponseObject> GetRequest(String url) async {
    try {
      final Response response = await get(Uri.parse(url));
      log(response.statusCode.toString());
      log(response.body.toString());
      if (response.statusCode == 200) {
        final decodeDta = jsonDecode(response.body);
        return ResponseObject(
            Issuccess: true, statuscode: 200, responsebody: decodeDta);
      } else {
        return ResponseObject(
            Issuccess: false,
            statuscode: response.statusCode,
            responsebody: '');
      }
    } catch (e) {
      return ResponseObject(
          Issuccess: false,
          statuscode: -1,
          responsebody: '',
          errormessage: e.toString());
    }
  }
  static Future<ResponseObject> GetPost(String url,Map<String,dynamic>body) async {
    try {
      final Response response = await post(Uri.parse(url) ,body:jsonEncode(body),headers:{'Content-type':'application/json'} );
      log(response.statusCode.toString());
      log(response.body.toString());
      if (response.statusCode == 200) {
        final decodeDta = jsonDecode(response.body);
        return ResponseObject(
            Issuccess: true, statuscode: 200, responsebody: decodeDta);
      } else {
        return ResponseObject(
            Issuccess: false,
            statuscode: response.statusCode,
            responsebody: '');
      }
    } catch (e) {
      return ResponseObject(
          Issuccess: false,
          statuscode: -1,
          responsebody: '',
          errormessage: e.toString());
    }
  }
}
