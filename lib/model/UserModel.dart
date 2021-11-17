// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    // this.id,
    this.name,
    this.userName,
    this.UserPass,
    this.phone,
    this.email,
    this.disable,
  });

  // int id;
  String name;
  String userName;
  String UserPass;
  String phone;
  String email;
  bool disable;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    // id: json["id"],
    name: json["name"],
    userName: json["userName"],
    UserPass: json["UserPass"],
    phone: json["phone"],
    email: json["email"],
    disable: json["disable"],
  );

  Map<String, dynamic> toJson() => {
    // "id": id,
    "name": name,
    "userName": userName,
    "UserPass": UserPass,
    "phone": phone,
    "email": email,
    "disable": disable,
  };
}
