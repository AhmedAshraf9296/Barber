import 'dart:convert';
import 'dart:io';

import 'package:barber/main.dart';
import 'package:barber/model/api_branches_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class WorkingHoursData extends GetxController {

  Future<List<dynamic>> getWorkingHours() async {
    var url = Uri.parse('https://35.228.166.25:5005/api/WorkingHours');
    // var url = Uri.parse('http://192.168.2.124:5005/api/workinghours');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var res = response.body;
      var woringHoursData =  json.decode(res);
      return woringHoursData;
    }
  }
}
