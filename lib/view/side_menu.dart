import 'package:barber/view/about_us_view.dart';
import 'package:barber/view/auth/login_screen.dart';
import 'package:barber/view/booking_view.dart';
import 'package:barber/view/home_view.dart';
import 'package:barber/view/our_cleints.dart';
import 'package:barber/view_model/auth_view_model.dart';
import 'package:barber/view_model/home_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CustomDrawer extends GetWidget<HomeViewModel> {
  final userDate = GetStorage();
  final Function closeDrawer;

  CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return GetBuilder<AuthViewModel>(
      builder: (controller)=> Container(
        color: Colors.white,
        width: mediaQuery.size.width * 0.60,
        height: mediaQuery.size.height,
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey.withAlpha(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img-1639.jpg"),fit: BoxFit.fill),borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('${userDate.read('email') == '' ?'':userDate.read('email')}'),
                  ],
                )),
            ListTile(
              onTap: () {
                // Get.(HomeView());
              },
              leading: Icon(Icons.home),
              title: Text(
                "Bundles",
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                Get.to(AboutUsView());
              },
              leading: Icon(Icons.cut),
              title: Text("About Us"),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                debugPrint("Tapped Payments");
              },
              leading: Icon(Icons.shopping_bag),
              title: Text("Products"),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                Get.to(OurClients());
              },
              leading: Icon(Icons.emoji_people),
              title: Text("Our Clients"),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
               ListTile(
                onTap: () {
                  Get.to(userDate.read('email') == null?LoginScreen():BookingView());
                  // Get.to(Obx(()=>Get.find<AuthViewModel>().user == null?LoginScreen():BookingView()));
                },
                leading: Icon(Icons.bookmark_border),
                title: Text("Booking"),
              ),

          ],
        ),
      ),
    );
  }
}
