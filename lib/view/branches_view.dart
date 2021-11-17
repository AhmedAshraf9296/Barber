import 'package:barber/view/widgets/BranchListWidget.dart';
import 'package:barber/model/booking_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Branches_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(
        builder: (controller) => Scaffold(
              body: Container(
              child: BranchesListView().build(context),
              ),
            ),
    );
  }
}
