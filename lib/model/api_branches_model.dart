// To parse this JSON data, do
//
//     final apiBranchesModel = apiBranchesModelFromJson(jsonString);

import 'dart:convert';

List<ApiBranchesModel> apiBranchesModelFromJson(String str) =>
    List<ApiBranchesModel>.from(
        json.decode(str).map((x) => ApiBranchesModel.fromJson(x)));

String apiBranchesModelToJson(List<ApiBranchesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiBranchesModel {


  final int id;
  final String name;
  final String itemImg;
  final bool disable;

  ApiBranchesModel({
    this.id,
    this.name,
    this.itemImg,
    this.disable,
  });

  factory ApiBranchesModel.fromJson(Map<dynamic, dynamic> json) =>
      ApiBranchesModel(
        id: json["id"],
        name: json["name"],
        itemImg: json["itemImg"],
        disable: json["disable"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "itemImg": itemImg,
        "disable": disable,
      };
}
