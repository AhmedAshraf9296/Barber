import 'package:barber/view/widgets/custome_button.dart';
import 'package:barber/view/widgets/custome_text.dart';
import 'package:barber/view/widgets/custome_text_form_field.dart';
import 'package:barber/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Custom_Text(
                  text: 'Sign Up',
                  color: Colors.black,
                  fontSize: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                // CustomTextFormField(
                //   text: 'Code',
                //   hint: 'Enter Yor Code',
                //   onSave: (value) {
                //     controller.id =int.parse(value);
                //   },
                //   validator: (value) {
                //     if (value == null) {
                //       print('error');
                //     }
                //   },
                // ),
                SizedBox(
                  height: 40,
                ),

                CustomTextFormField(
                  text: 'Name',
                  hint: 'AAshraf',
                  onSave: (value) {
                    controller.name = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('error');
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),


                CustomTextFormField(
                  text: 'User Name',
                  hint: 'Enter User Name',
                  onSave: (value) {
                    controller.userName = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('error');
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),

                CustomTextFormField(
                  text: 'Email',
                  hint: 'IamAshraf@gmail.com',
                  onSave: (value) {
                    controller.email = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('error');
                    }
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  text: 'Password',
                  hint: '***********',
                  onSave: (value) {
                    controller.userPass = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('error');
                    }
                  },
                ),

                SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  text: 'Phone',
                  hint: 'Enter Yor Phone',
                  onSave: (value) {
                    controller.phone = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('error');
                    }
                  },
                ),


                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  color: Colors.green,
                  icons: Icon(Icons.person,color: Colors.white,),
                  text: 'SIGN UP',
                  onPressed: () {
                    _formKey.currentState.save();
                    if (_formKey.currentState.validate()) {
                      controller.registerUser();
                    }
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
