import 'package:flutter/material.dart';
import 'custome_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String  text;
  final String imageName;
  final Function onPressed;


  CustomButtonSocial({this.text, this.imageName,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      child: FlatButton(
        onPressed: onPressed as void Function(),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset('assets/images/$imageName'),
            SizedBox(
              width: 90,
            ),
            Custom_Text(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
