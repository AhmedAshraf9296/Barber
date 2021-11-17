import 'package:barber/model/booking_view_model.dart';
import 'package:barber/view/date_view/date_booking_view_widget.dart';
import 'package:barber/view/time_view/time_booking_view_widget.dart';
import 'package:barber/view/time_view/time_view.dart';
import 'package:barber/view/widgets/custome_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateTimeBookingView extends StatelessWidget {
  TimeBookingViewWidget timeBookingViewWidget;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(
      builder: (controller) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white60),
        child: Column(
          children: [
            Center(
              child: Container(
                child: CustomButton(
                  text: 'Select Date',
                  onPressed: () {
                    Get.bottomSheet(DateBookingViewWidget());
                  },
                  icons: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Center(
              child: Container(
                child: CustomButton(
                  text: 'Select Time',
                  onPressed: () {
                    Get.bottomSheet(TimeView());
                  },
                  icons: Icon(
                    Icons.timelapse_outlined,
                    color: Colors.white,
                  ),
                  // icons: Icons.calendar_today,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*.8,
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Time',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*.8,
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(controller.selectedDate == null
                              ? ''
                              : controller.selectedDate.toString().substring(0, 10),),
                          Text(controller.selectedTime == null
                              ? ''
                              : controller.selectedTime.toString()),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Press')
                    ],),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
