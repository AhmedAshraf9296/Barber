import 'package:barber/model/booking_view_model.dart';
import 'package:barber/view/about_us_view.dart';
import 'package:barber/view/control_view.dart';
import 'package:barber/view/our_cleints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingView extends StatelessWidget {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(
        init: BookingViewModel(),
        builder: (controller) => Scaffold(
              backgroundColor: Colors.grey.shade800,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70,right: 25),
                    child: Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: controller.screenProgress,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    height: MediaQuery.of(context).size.height * .65,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(right: 15,left: 15),
                    child: controller.currentScreen,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FlatButton(
                            child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.arrow_left,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            color: Colors.green,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0)),
                            onPressed: () {
                              if(controller.navigatorValue == 0 ){
                                return null;
                              }
                              else {
                                controller.changeSelectedValue(controller.navigatorValue-1);
                                controller.screenProgress.gotoPreviousStage();
                              }
                            },
                          ),
                          FlatButton(
                            child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.arrow_right,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            color: Colors.green,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0)),
                            onPressed: () {
                              controller.screenProgress.gotoNextStage();
                              print(controller.branchIndex);
                              print(controller.branchLocationName);
                              // if(number < 3){
                              //   number++;
                              // }
                              // if(number == 2){
                              //   print('screen 2');
                              // }
                              controller.changeSelectedValue(controller.navigatorValue +1);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
