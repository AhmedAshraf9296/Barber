import 'package:barber/model/booking_view_model.dart';
import 'package:barber/view/widgets/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(builder: (controller) => Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
        child: Container(
          child: Column(
            children: [
              Row(children: [
                Custom_Text(text: 'Date : ',),
                SizedBox(height: 20,),
                Custom_Text(text: controller.selectedDate.toString().substring(0,10),),
              ],),
              Row(children: [
                Custom_Text(text: 'Time : ',),
                SizedBox(height: 20,),
                Custom_Text(text: controller.selectedTime,),
              ],),
              Row(children: [
                Custom_Text(text: 'Total Price : ',),
                SizedBox(height: 20,),
                Custom_Text(text: controller.priceCalc.toString(),),
              ],),
              Row(children: [
                Custom_Text(text: 'Branch Name : ',),
                SizedBox(height: 20,),
                Custom_Text(text: controller.branchLocationName,),
              ],),
              Center(child: TextButton(onPressed: (){controller.insertHeader();}, child: Text('Submit'))),
            ],
          ),
        ),
      ),
    ));
  }
}
