import 'package:get/get.dart';
import 'package:pay_app/controller/login_controller.dart';

class LoginBinging extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}