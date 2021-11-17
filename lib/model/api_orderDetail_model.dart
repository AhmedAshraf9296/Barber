// To parse this JSON data, do
//
//     final orderDetailModel = orderDetailModelFromJson(jsonString);

import 'dart:convert';

List<OrderDetailModel> orderDetailModelFromJson(String str) => List<OrderDetailModel>.from(json.decode(str).map((x) => OrderDetailModel.fromJson(x)));

String orderDetailModelToJson(List<OrderDetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderDetailModel {
  OrderDetailModel({
    this.id,
    this.hid,
    this.productid,
    this.qty,
    this.price,
    this.total,
  });

  int id;
  int hid;
  int productid;
  int qty;
  int price;
  int total;

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) => OrderDetailModel(
    id: json["id"],
    hid: json["hid"],
    productid: json["productid"],
    qty: json["qty"],
    price: json["price"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "hid": hid,
    "productid": productid,
    "qty": qty,
    "price": price,
    "total": total,
  };
}
