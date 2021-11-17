import 'package:flutter/material.dart';

class Custom_Text extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final int maxLine;
  final Alignment alignment;
  final double height;
  final Color backGroundColor;
  final FontWeight fontWieght;
  Custom_Text(
      {this.text = '',
        this.fontSize = 16,
        this.color = Colors.black,
        this.alignment = Alignment.topLeft,
        this.maxLine,
        this.height = 1,
      this.backGroundColor,
      this.fontWieght});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: fontSize, height: height,backgroundColor: backGroundColor,fontWeight: fontWieght),
        maxLines: maxLine,
      ),
    );
  }
}
