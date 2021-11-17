// To parse this JSON data, do
//
//     final orderHeaderModel = orderHeaderModelFromJson(jsonString);

import 'dart:convert';

List<OrderHeaderModel> orderHeaderModelFromJson(String str) => List<OrderHeaderModel>.from(json.decode(str).map((x) => OrderHeaderModel.fromJson(x)));

String orderHeaderModelToJson(List<OrderHeaderModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderHeaderModel {
  OrderHeaderModel({
    this.id,
    this.categoryId,
    this.whId,
    this.transactionDate,
    this.total,
  });

  int id;
  int categoryId;
  int whId;
  DateTime transactionDate;
  int total;

  factory OrderHeaderModel.fromJson(Map<String, dynamic> json) => OrderHeaderModel(
    id: json["id"],
    categoryId: json["categoryId"],
    whId: json["whId"],
    transactionDate: DateTime.parse(json["transactionDate"]),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "categoryId": categoryId,
    "whId": whId,
    "transactionDate": transactionDate.toIso8601String(),
    "total": total,
  };
}
