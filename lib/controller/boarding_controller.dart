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
    Boarding(image: '${Const.images}boarding1.png', title: 'ادفعلي  ', subTitle: ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . '),
    Boarding(image: '${Const.images}boarding2.png', title: 'ادفعلي  ', subTitle: ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . '),
    Boarding(image: '${Const.images}boarding3.png', title: 'ادفعلي  ', subTitle: ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . '),
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
