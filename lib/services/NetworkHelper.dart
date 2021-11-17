import 'dart:convert';

import 'package:barber/model/UserModel.dart';
import 'package:barber/model/scoring_list_model_detail.dart';
import 'package:barber/model/scoring_list_model_header.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiUsers extends GetxController {
  Future<List<dynamic>> fetchUsers() async {
    var url = Uri.parse('https://35.228.166.25:5005/api/Users');
    // var url = Uri.parse('http://192.168.2.124:5005/api/users');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var loggedUser = json.decode(response.body);
      // print(loggedUser);
      return loggedUser;
    }
  }

  Future<UserModel> insertUser(String name, String userName, String userPass,
       phone, String email, bool enabled) async {
    final url = Uri.parse('https://35.228.166.25:5005/api/Users/');
    // final url = Uri.parse('http://192.168.2.124:5005/api/users');
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body:
      json.encode({
        "name": '$name',
        "userName": '$userName',
        "userPass": '$userPass' ,
        "phone": '$phone' ,
        "email": '$email',
        'disable': enabled,
      }),
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      // var users = response.body;
      var userData = jsonEncode(response.body);
      print(userData);
    }
  }

  Future<ScoringListModelDetail> getScoringListDetail(value) async {
    // var url = Uri.parse('http://192.168.2.124:4070/api/getScoringsclByID/$id');
    var url = Uri.parse('http://192.168.2.124:4070/api/getScoringscl');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var res = response.body;
      var data = json.decode(res);
      return ScoringListModelDetail.fromJson(data[value]);
    }
  }

  // Future<List<ScoringListModelDetail>> getScoringListDetail() async {
  //   var url = "http://192.168.2.124:4070/api/getScoringscl";
  //   var response = await Dio().get(url);
  //   // print(response.data);
  //   await DatabaseScoringList.db.initDb();
  //   return (response.data as List).map((sclList) {
  //     print('Inserting $sclList');
  //     DatabaseScoringList.db.createScoringList(ScoringListModelDetail.fromJson(sclList));
  //   }).toList();
  // }

  Future<ScoringListModelHeader> getScoringListHeader(value) async {
    var url = Uri.parse('http://192.168.2.124:4070/api/GetscoringSclh');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var res = response.body;
      var data = json.decode(res);
      // ScoringListModelHeader scoringListModelHeader = new ScoringListModelHeader.fromJson(data);
      // print(scoringListModelHeader.sclTitle);
      // print(data);
      // ScoringModelHeaderLists scoringModelHeaderLists =
      //     ScoringModelHeaderLists.fromJson(data);
      // List<ScoringListModelHeader> pList = scoringModelHeaderLists
      //     .scoringHeaderList
      //     .map((e) => ScoringListModelHeader.fromJson(e))
      //     .toList();
      // print(pList[0].sclTitle);
      // print(pList.length);
      // for (int i=0;i< 14;i++){
      // print(data[i]);
      // var x = data[i];

      // }
      return ScoringListModelHeader.fromJson(data[value]);
      // return ScoringListModelHeader(sclId: scoringListModelHeader.sclId,sclTitle: scoringListModelHeader.sclTitle);
      // return ScoringListModelHeader.fromJson(data);
    }
  }
}
