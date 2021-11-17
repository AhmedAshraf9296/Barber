
import 'package:barber/view/widgets/custome_button.dart';
import 'package:barber/view/widgets/custome_button_social.dart';
import 'package:barber/view/widgets/custome_text.dart';
import 'package:barber/view/widgets/custome_text_form_field.dart';
import 'package:barber/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constance.dart';
import '../register_view.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return controller.loading.value
        ? Center(child: CircularProgressIndicator())
        : Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Custom_Text(
                      text: 'Welcome',
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(RegisterView());
                      },
                      child: Custom_Text(
                        text: 'Sign UP',
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Custom_Text(
                  text: 'Sign in to Continue',
                  fontSize: 14,
                  color: Colors.grey,
                  alignment: Alignment.topLeft,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  text: 'Email',
                  hint: 'Example@gmail.com',
                  onSave: (value) {
                    controller.email = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('Error with email');
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  text: 'Password',
                  hint: '*****',
                  onSave: (value) {
                    controller.userPass = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('Error with password');
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Custom_Text(
                  text: 'Forget Password',
                  fontSize: 14,
                  alignment: Alignment.topRight,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  icons: Icon(Icons.login_outlined,color: Colors.black,),
                  color: Colors.green.shade200,
                  onPressed: () {
                    _formKey.currentState.save();
                    if(_formKey.currentState.validate()){
                      controller.loginUser();
                    }
                  },
                  text: 'SIGN IN',
                ),

                SizedBox(
                  height: 20,
                ),
                Custom_Text(
                  text: '-OR-',
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButtonSocial(
                  text: 'Sign In With Facebook',
                  imageName: 'Facebook.png',
                  onPressed: () {
                    // controller.facebookSignInMethod();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtonSocial(
                  text: 'Sign In With Google',
                  imageName: 'Google.png',
                  onPressed: () {
                    // controller.googleSignInMethod();
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
