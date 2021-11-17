import 'package:barber/model/booking_view_model.dart';
import 'package:barber/view/time_view/time_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class contr extends GetxController {
//   var checkTool = false.obs;
// }

class TimeBookingViewWidget extends BookingViewModel {
  // final contr  ctr = Get.put(contr());
  // final TimeModel tModel = Get.put(TimeModel('', false));
  ApiTimeModel timeModel;

  TimeBookingViewWidget(this.timeModel);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(
      // init: Get.find(),
      builder: (controller) =>
          Container(
            color: Colors.grey,
            padding: EdgeInsets.only(top: 5, left: 5, right: 5),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding:
                      EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(timeModel.name),
                          Flexible(
                            child: Obx(() =>
                                CheckboxListTile(
                                  value: timeModel.disable.value,
                                  onChanged: timeModel.disable.value != false
                                      ? null
                                      : (value) {
                                    if (timeModel.disable.value == true) {
                                      timeModel.disable.value =
                                      !timeModel.disable.value;
                                      controller
                                          .changeTimeSelected(timeModel.name);
                                    } else {
                                      timeModel.disable.value =
                                      !timeModel.disable.value;
                                      controller
                                          .changeTimeSelected(timeModel.name);
                                      timeModel.disable.value =
                                      !timeModel.disable.value;
                                      Get.back();
                                    }
                                  },
                                  // timeModel.enabled.value != false
                                  //     ? null
                                  //     : (value) {
                                  //         if (timeModel.available.value == true) {
                                  //           timeModel.available.value =
                                  //               !timeModel.available.value;
                                  //           controller
                                  //               .changeTimeSelected(timeModel.time);
                                  //         } else {
                                  //           timeModel.available.value =
                                  //               !timeModel.available.value;
                                  //           controller
                                  //               .changeTimeSelected(timeModel.time);
                                  //           timeModel.available.value =
                                  //               !timeModel.available.value;
                                  //           Get.back();
                                  //         }
                                  //       },
                                  activeColor
                                  :
                                  Colors
                                  .
                                  green,
                                ),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
    );
  }
}
