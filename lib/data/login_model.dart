import 'package:task_manager_project_in_flutter/data/user_data_login_part.dart';

class LoginResponse {
  String? status;
  String? token;
  UserData? data;

  LoginResponse({this.status, this.token, this.data});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    data = json['data'] != null ? new UserData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}



