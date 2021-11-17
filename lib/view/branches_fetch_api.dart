import 'dart:convert';
import 'dart:io';

import 'package:barber/main.dart';
import 'package:barber/model/api_branches_model.dart';
import 'package:dio/dio.dart';

import 'package:get/get_connect.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

class BranchData  extends GetConnect  {
  // final myStream = Stream.periodic(Duration(milliseconds: 1000),(a)=>a);
  // final subData = myStream.listen((event) {event.obs});
  Future<List<dynamic>> getBranchData() async {
//    allowAutoSignedCert = true;
    // var url = Uri.parse('https://35.228.166.25:5005/api/Branches');
    // var response = await http.get(url);
    // if (response.statusCode == 200 || response.statusCode == 201) {
    //  var res = response.body;
    //   var branchData =  json.decode(res);
    //   return branchData;
    // } 
    /////////////////////////////////////
    var url = 'https://35.228.166.25:5005/api/Branches';
    // var url = 'http://192.168.2.124:5005/api/branches';
    var response = await Dio().get(url);
    // print(response.data);
    return response.data;
  }



}