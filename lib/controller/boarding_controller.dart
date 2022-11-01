import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/utils/constants.dart';
import 'package:pay_app/utils/preferences_manager.dart';

class BoardingsController extends GetxController{

  RxBool isLast = false.obs;

  late PageController pageController;
  int currentPage = 0;

  void getCurrentPage({required int currentPage}) {
      this.currentPage = currentPage;
      update();

  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void goToNextScreen() {
    PreferencesManager.saveAppData(key: Const.KEY_BOARDING, value: true)
        .then((value) => {if (value) Get.offAndToNamed(Routes.language)});
  }

}