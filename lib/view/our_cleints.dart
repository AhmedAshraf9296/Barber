import 'package:barber/model/control_view_model.dart';
import 'package:barber/view/control_view.dart';
import 'package:barber/view/widgets/our_client_images.dart';
import 'package:barber/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OurClients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        builder: (controller) => controller.loading.value
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar: AppBar(
                  backgroundColor:
                  Colors.black12.withOpacity(.1),
                  elevation: 30,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Get.offAll(ControlView());
                    },
                  ),
                ),
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    color:  Colors.grey.shade300,
                    child: Column(
                      children: [
                         controller.loading.value ? Center(child: CircularProgressIndicator()) : OurClientsImages(),
                      ],
                    ),
                  ),
                )
              ));
  }
}
