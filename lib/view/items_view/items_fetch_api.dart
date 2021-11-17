import 'dart:convert';
import 'dart:io';

import 'package:barber/main.dart';
import 'package:barber/model/api_branches_model.dart';
import 'package:barber/model/api_product_model.dart';
import 'package:barber/model/booking_view_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductsData extends GetxController {

  Future<List<dynamic>> getProductsData() async {
    // var url = Uri.parse(
        // 'https://barberv1-default-rtdb.firebaseio.com/product.json');
    var url = Uri.parse('https://35.228.166.25:5005/api/Products');
    // var url = Uri.parse('http://192.168.2.124:5005/api/products');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var res = response.body;
      var productsData = json.decode(res);

      return productsData;
    }
  }

  Future<void> addProductFbase() async {
    final String url = 'https://barberv1-default-rtdb.firebaseio.com/product.json';
    await http.post(Uri.parse(url), body: json.encode({
      "id": 15,
      "name": "GROOM PACKAGE Indoor/Outdoor",
      "description": "GROOM PACKAGE Indoor/Outdoor",
      "categoryId": 1,
      "isService": true,
      "itemImg": "https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/218036356_345803166982963_7496739020888929550_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHYpyL8P6EuOZkp4PQKi4Eywn2nVPbMQtXCfadU9sxC1UktFHNezFTqruBo3ZQHeZtSrWfHsAPr_TH1awczoltZ&_nc_ohc=_cKdYOS8I9EAX-3RnrP&_nc_ht=scontent.faly3-2.fna&oh=5ebe6a92ff5bd360a712fecb5f0750b1&oe=6199B9F2",
      "price": 880,
      "qtyStock": 1000,
      "disable": false
    }));
  }
  final List<ProductModel> list=[];
  Future<void> getProductsFbase() async {
    var url = Uri.parse(
        'https://barberv1-default-rtdb.firebaseio.com/product.json');
    var response = await http.get(url);
    var extData = json.decode(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final extractedData =  json.decode(response.body) as Map<String,dynamic>;
      extractedData.forEach((prodId, prodData) {
       list.add(ProductModel(
               id: prodId,
               name: prodData['name'],
               description:prodData['description'],
               qtyStock: prodData['qtyStock'],
               disable: prodData['disable'],
               isService: prodData['isService'],
               category: prodData['category'],
               categoryId: prodData['category'],
               itemImg: prodData['itemImg'],
               price: prodData['price'],
       ));
     });
    }
  }
}