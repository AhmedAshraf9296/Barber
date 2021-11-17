import 'package:barber/model/booking_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SelectedItems extends GetxController{
  final int id;
  final String itemDesc;
  final int price;
  var  selected = false.obs;
  SelectedItems(this.id, this.itemDesc, this.price,this.selected);
}
