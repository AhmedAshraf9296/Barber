import 'package:barber/model/booking_view_model.dart';
import 'package:barber/view/items_view/items_model.dart';
import 'package:barber/view/widgets/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemBookingviewWidget extends StatelessWidget {
  ItemModel itemModel;
  ItemBookingviewWidget(this.itemModel);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(builder: (controller) =>
        Container(
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
                        // Custom_Text(text:'${itemModel.itemCode}',color: Colors.grey,),
                        Custom_Text(text: '${controller.itemDescription}'),
                        Text('${controller.itemPrice}'),
                        // Obx(()=> Checkbox(value: itemModel.selected.value, onChanged: (value){itemModel.selected.value = value;print(value);})),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
