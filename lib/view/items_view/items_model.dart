import 'package:barber/model/booking_view_model.dart';
import 'package:barber/view/widgets/custome_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemModel extends StatelessWidget {
  // final int itemCode;
  // final String itemDescription;
  // final double itemPrice;
  // var selected = false.obs;

  // ItemModel(this.itemCode, this.itemDescription, this.itemPrice);

  List<int> itemCode = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  List<String> itemDescription = <String>[
    'HAIR CUT',
    'BEARD',
    'BEARD STEAM',
    'BLOW DRY',
    'HAIR CREATE TREATMENT',
    'HAIR OIL TREATMENT',
    'FACIALS (SCRUB - STEAM)',
    'RENSAGE',
    'STRAIGHTENING LIGHT HAIR',
    'STRAIGHTENING FULL HAIR',
    'HOT & COLD TOWEL',
    'WAX HAIR REMOVAL',
    'PROTEIN (Depends On Hair Length)',
    'HAIR DYE',
    'GROOM PACKAGE Indoor/Outdoor',
  ];

  List<double> itemPrice = <double>[
    100,
    50,
    60,
    60,
    150,
    180,
    90,
    100,
    150,
    200,
    120,
    60,
    400,
    130,
    500
  ];


@override
  Widget build(BuildContext context) {

    return GetBuilder<BookingViewModel>(
      builder:(controller)=> Scaffold(
        body: Container(
          child: ListView.builder(
            itemBuilder:  (context, index){
              return Container(child: Custom_Text(text: index.toString(),fontSize: 40,),);
            },
            itemCount: controller.itemDescription.length,
          ),
        ),
      ),
    );
  }
}
