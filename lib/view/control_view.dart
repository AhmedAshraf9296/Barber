import 'package:barber/model/control_view_model.dart';
import 'package:barber/view/home_view.dart';
import 'package:barber/view_model/auth_view_model.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    // return Obx(() {
      return GetBuilder<ControlViewModel>(
              init: ControlViewModel(),
              builder: (controller) => Scaffold(
                body: controller.currentScreen,
                bottomNavigationBar: bottomNavigationBar(),
              ),
            );
    // });
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: ControlViewModel(),
      builder: (controller) => ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.location_pin, title: 'Store Loc'),
          TabItem(icon: Icons.message, title: 'Contact'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        elevation: 10,
        backgroundColor: Colors.grey,
        // backgroundColor: Colors.grey.shade50,
      ),
    );
  }

//   Widget bottomNavigationBar() {
//     return GetBuilder<ControlViewModel>(
//         init: Get.find(),
// builder: (controller) => BottomNavigationBar(
//   items: [
//     BottomNavigationBarItem(
//       activeIcon: Padding(
//         padding: const EdgeInsets.only(top: 25.0),
//         child: Text('Explore'),
//       ),
//       label: '',
//       icon: Padding(
//         padding: const EdgeInsets.only(top: 20.0),
//         child: Image.asset(
//           'assets/images/Icon_Explore.png',
//           fit: BoxFit.contain,
//           width: 20,
//         ),
//       ),
//     ),
//     BottomNavigationBarItem(
//       activeIcon: Padding(
//         padding: const EdgeInsets.only(top: 25.0),
//         child: Text('Cart'),
//       ),
//       label: '',
//       icon: Image.asset(
//         'assets/images/Icon_Cart.png',
//         fit: BoxFit.contain,
//         width: 20,
//       ),
//     ),
//     BottomNavigationBarItem(
//       activeIcon: Padding(
//         padding: const EdgeInsets.only(top: 25.0),
//         child: Text('Account'),
//       ),
//       label: '',
//       icon: Image.asset(
//         'assets/images/Icon_User.png',
//         fit: BoxFit.contain,
//         width: 20,
//       ),
//     ),
//   ],
//   currentIndex: controller.navigatorValue,
//   onTap: (index) {
//     controller.changeSelectedValue(index);
//   },
//   elevation: 0,
//   selectedItemColor: primaryColor,
//   backgroundColor: Colors.grey.shade50,
// ),
//     );
//   }
}
