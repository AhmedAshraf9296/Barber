import 'package:barber/model/scoring_list_model_detail.dart';
import 'package:barber/model/scoring_list_model_header.dart';
import 'package:barber/services/NetworkHelper.dart';
import 'package:barber/view/home_view.dart';
import 'package:barber/view/side_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
class HomeViewModel extends GetxController {
  // final LocalStorageData localStorageData = Get.find();

  FSBStatus status;

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  ValueNotifier<bool> get checked => _checked;
  ValueNotifier<bool> _checked = ValueNotifier(false);

  List<ScoringListModelHeader> get scoringListModel => _scoringListModel;
  List<ScoringListModelHeader> _scoringListModel = [];

  List<ScoringListModelDetail> get scoringListModelDetail =>
      _scoringListModelDetail;
  List<ScoringListModelDetail> _scoringListModelDetail = [];

  HomeViewModel() {
    // getScoringList();
  }

  void getScoringList() async {
    _loading.value = true;
    var p = ApiUsers();
    // List<ScoringListModelHeader> data =  await p.getScoringListHeader();
    for (int i = 0; i < 14; i++) {
      var data = await p.getScoringListHeader(i).then((value) {
        _scoringListModel.add(ScoringListModelHeader(
            sclId: value.sclId, sclTitle: value.sclTitle));
      });
    }
    _loading.value = false;
    update();
    // getScoringListDetail();
  }



}
