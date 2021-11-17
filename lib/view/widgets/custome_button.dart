import 'package:barber/view/widgets/custome_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constance.dart';
import 'custome_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Widget icons;
  final Color color;
  CustomButton({this.text, this.onPressed,this.icons,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15,left: 12,right: 12),
        child: TextButton(
          onPressed: onPressed as void Function(),
          style: TextButton.styleFrom(
            primary: color,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          backgroundColor: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomeIcon(icons),
              Custom_Text(
                text: text,
                alignment: Alignment.center,
                color: Colors.black,
              ),
            ],
          ),
          // padding: EdgeInsets.all(20),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
        ),
      ),
    );
  }
}
