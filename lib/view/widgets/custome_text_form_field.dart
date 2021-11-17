import 'package:flutter/material.dart';
import 'custome_text.dart';
class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final Function onSave;
  final Function validator;
  final TextEditingController controller;

  CustomTextFormField({this.text, this.hint, this.onSave, this.validator,this.controller});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Custom_Text(
            text: text,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            controller: controller,
            onSaved: onSave as void Function(String),
            validator: validator as String Function(String),
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Colors.black
            ),
          )
        ],
      );
  }
}
