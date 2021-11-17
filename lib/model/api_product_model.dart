// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.description,
    this.categoryId,
    this.category,
    this.isService,
    this.itemImg,
    this.price,
    this.qtyStock,
    this.disable,
  });
  // int id; working with normal sql
  String id;
  String name;
  String description;
  int categoryId;
  dynamic category;
  bool isService;
  String itemImg;
  int price;
  int qtyStock;
  bool disable;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    categoryId: json["categoryId"],
    category: json["category"],
    isService: json["isService"],
    itemImg: json["itemImg"],
    price: json["price"],
    qtyStock: json["qtyStock"],
    disable: json["disable"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "categoryId": categoryId,
    "category": category,
    "isService": isService,
    "itemImg": itemImg,
    "price": price,
    "qtyStock": qtyStock,
    "disable": disable,
  };
}
