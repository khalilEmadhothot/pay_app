
import 'package:get/get.dart';
import 'package:pay_app/controller/boarding_controller.dart';
import 'package:pay_app/controller/launch_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LaunchController());
    Get.put(BoardingsController());
    // Get.put(HomeController());
  }
}
