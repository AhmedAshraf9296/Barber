import 'package:barber/model/booking_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class BranchesListView extends BookingViewModel {
  int indexNum = 0;
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              backgroundColor: Colors.grey.shade800,
              body: SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: VerticalCardPager(
                            titles: controller.branchName,
                            // required
                            images: controller.branchImage,
                            // required
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                            // optional
                            onPageChanged: (page) {
                              // controller.changeBranchIndex(page.toInt(),titles[controller.branchIndex]);
                              // print(titles[controller.branchIndex]);
                            },
                            onSelectedItem: (index) {
                              indexNum = index;
                              controller.changeBranchIndex(
                                  index, controller.branchName[index]);
                              print(controller.branchLocationName);
                              print(controller
                                  .branchName[controller.branchIndex]);
                              controller.changeSelectedValue(controller.navigatorValue +1);
                              controller.screenProgress.gotoNextStage();
                            },
                            initialPage: 0,
                            // optional
                            align: ALIGN.CENTER // optional
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
