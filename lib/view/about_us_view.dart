import 'package:barber/view/control_view.dart';
import 'package:barber/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

import 'constance.dart';

class AboutUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        builder: (controller) => controller.loading.value
            ? Center(child: CircularProgressIndicator())
            : Scaffold(backgroundColor:Colors.grey.shade300,
                body: Container(
                  color: Colors.grey.shade300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ClipPath(
                          clipper: OvalBottomBorderClipper(),
                          child: Container(
                            width: double.infinity,
                            height: 280.0,
                            padding: EdgeInsets.only(bottom: 50.0),
                            decoration: BoxDecoration(
                              color: kYellow,
                              image: DecorationImage(
                                image: AssetImage("assets/rabie.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppBar(
                                  backgroundColor:
                                      Colors.black12.withOpacity(.0),
                                  elevation: 0,
                                  leading: IconButton(
                                    icon: Padding(
                                      padding: const EdgeInsets.all(11.0),
                                      child: Icon(
                                        Icons.arrow_back_sharp,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.offAll(ControlView());
                                    },
                                  ),
                                ),
                                Spacer(),
                                SizedBox(height: 15.0),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25.0),

                      ],
                    ),
                  ),
                ),
              ));
  }
}
