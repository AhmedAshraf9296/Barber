
import 'package:get/get.dart';

import 'dart:convert';
//
// class TimeModel extends GetxController{
//   final String time;
//    var available = false.obs;
//    var enabled = false.obs;
//   TimeModel(this.time, this.available,this.enabled);
// }
//
// List<TimeModel> timeList = [
//   TimeModel('00:30', false.obs,false.obs),
//   TimeModel('01:30', false.obs,false.obs),
//   TimeModel('02:30', false.obs,false.obs),
//   TimeModel('03:30', false.obs,false.obs),
//   TimeModel('04:30', false.obs,false.obs),
//   TimeModel('05:30', false.obs,false.obs),
//   TimeModel('06:30', false.obs,false.obs),
//   TimeModel('07:30', false.obs,false.obs),
//   TimeModel('08:30', false.obs,false.obs),
//   TimeModel('09:30', false.obs,false.obs),
//   TimeModel('10:30', false.obs,false.obs),
//   TimeModel('11:30', false.obs,false.obs),
// ];
//



// To parse this JSON data, do
//
//     final apiTimeModel = apiTimeModelFromJson(jsonString);

List<ApiTimeModel> apiTimeModelFromJson(String str) => List<ApiTimeModel>.from(json.decode(str).map((x) => ApiTimeModel.fromJson(x)));

String apiTimeModelToJson(List<ApiTimeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiTimeModel extends GetxController {
  ApiTimeModel({
    this.id,
    this.name,
    this.disable,
  });

  int id;
  String name;
  var disable = false.obs;

  factory ApiTimeModel.fromJson(Map<String, dynamic> json) => ApiTimeModel(
    id: json["id"],
    name: json["name"],
    disable: json["disable"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "disable": disable,
  }.obs;
}