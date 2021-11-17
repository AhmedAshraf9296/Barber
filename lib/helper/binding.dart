import 'package:barber/model/booking_view_model.dart';
import 'package:barber/model/branches_model.dart';
import 'package:barber/model/control_view_model.dart';
import 'package:barber/services/NetworkHelper.dart';
import 'package:barber/view/time_view/time_model.dart';
import 'package:barber/view/widgets/BranchListWidget.dart';
import 'package:barber/view/widgets/our_client_images.dart';
import 'package:barber/view_model/auth_view_model.dart';
import 'package:barber/view_model/home_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControlViewModel());
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => OurClientsImages());
    Get.lazyPut(() => BookingViewModel());
  }
}
