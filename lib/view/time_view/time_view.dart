import 'package:barber/model/booking_view_model.dart';
import 'package:barber/view/time_view/time_booking_view_widget.dart';
import 'package:barber/view/time_view/time_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(
      init: Get.find(),
        builder: (controller) => Scaffold(
              body: Container(
                child:ListView.builder(
                    itemCount: controller.timeListModel.length,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var timeListIndex = controller.timeListModel[index];
                      return TimeBookingViewWidget(timeListIndex).build(context);
                    },
                  ),

              ),
            ));
  }
}
