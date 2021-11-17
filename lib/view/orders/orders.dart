
import 'dart:convert';

import 'package:barber/model/api_orderHeader_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Orders extends GetxController{
  Future<OrderHeaderModel> insertOrderHeader( int categoryId,int whId, String transactionDate, int total) async {
    // final url = Uri.parse('https://35.228.166.25:5005/api/OrderHs/');
    final url = Uri.parse('http://192.168.2.124:5005/api/orderh/');
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body:
      json.encode({
        "categoryId": '$categoryId',
        "whId": '$whId' ,
        "transactionDate": '$transactionDate' ,
        "total": '$total',
      }),
    );
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var orderData = jsonEncode(response.body);
    }
  }

  Future<OrderHeaderModel> insertOrderDetail( int hid,int productid, int qty, int price,int total) async {
    // final url = Uri.parse('https://35.228.166.25:5005/api/OrderHs/');
    final url = Uri.parse('http://192.168.2.124:5005/api/orderd/');
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body:
      json.encode({
        "hid": '$hid',
        "productid": '$productid',
        "qty": '$qty',
        "price": '$price',
        "total": '$total'
      }),
    );
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var orderData = jsonEncode(response.body);

    }
  }

  Future<List<dynamic>> getOrderHeader() async {
    var url = Uri.parse('https://35.228.166.25:5005/api/Products');
    // var url = Uri.parse('http://192.168.2.124:5005/api/orderh');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var res = response.body;
      var headerData =  json.decode(res);
      return headerData;
    }
  }
}