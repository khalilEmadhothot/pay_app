import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_app/utils/app_helper.dart';

class LoginController extends GetxController{

  RxBool isLoading = false.obs;
  bool isVisiblePass = true;
  IconData visiblePassIcon = Icons.visibility;

  late GlobalKey<FormState> formKey;
  late TextEditingController codeTextController;
  late TextEditingController passwordTextController;

  @override
  void onInit() {
    formKey = GlobalKey<FormState>();
    codeTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    formKey.currentState!.dispose();
    codeTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  void visiblePassword() {
    isVisiblePass = !isVisiblePass;
    visiblePassIcon = isVisiblePass ? Icons.visibility : Icons.visibility_off;
    update();
  }

  void login() async {
    bool isValidate = formKey.currentState!.validate();
    if(isValidate){
      isLoading(true);
      Future.delayed(const Duration(seconds: 3), () => AppHelper.showToast(message: 'Login'));
    }else{
      isLoading(false);
    }

  }

}