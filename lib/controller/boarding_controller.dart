import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_app/models/boarding.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/utils/constants.dart';
import 'package:pay_app/utils/preferences_manager.dart';
import '../widget/widget_boarding.dart';

class BoardingsController extends GetxController {
  RxBool isLast = false.obs;

  late PageController pageController;
  int currentPage = 0;

  List<Boarding> listBoardings = [
    BoardingItem(
      ImagePage: 'images/image_page_view_one.png',
      Title: 'ادفعلي  ',
      Title2:
      ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
    ),
    BoardingItem(
      ImagePage: 'images/image_page_view_tow.png',
      Title: 'ادفعلي  ',
      Title2:
      ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
    ),
    BoardingItem(
      ImagePage: 'images/image_page_view_three.png',
      Title: 'ادفعلي  ',
      Title2:
      ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
    ),
  ];

  List<Widget> listBoardingss = [
    BoardingItem(
      ImagePage: 'images/image_page_view_one.png',
      Title: 'ادفعلي  ',
      Title2:
          ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
    ),
    BoardingItem(
      ImagePage: 'images/image_page_view_tow.png',
      Title: 'ادفعلي  ',
      Title2:
          ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
    ),
    BoardingItem(
      ImagePage: 'images/image_page_view_three.png',
      Title: 'ادفعلي  ',
      Title2:
          ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
    ),
  ];

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

  void getCurrentPage({required int currentPage}) {
    this.currentPage = currentPage;
    update();
  }

  void goToNextScreen() {
    PreferencesManager.saveAppData(key: Const.KEY_BOARDING, value: true)
        .then((value) => {if (value) Get.offAndToNamed(Routes.language)});
  }
}
