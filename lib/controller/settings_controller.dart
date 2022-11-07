
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pay_app/models/language.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/utils/app_color.dart';
import 'package:pay_app/utils/app_text.dart';
import 'package:pay_app/utils/constants.dart';
import 'package:pay_app/utils/preferences_manager.dart';

class SettingsController extends GetxController {
  RxBool isLoading = false.obs;
  String languageSelected = '';
  String userType = '';
  bool userSelected = true;


//عرض اللغات
  List<Language> listLanguages = [
    Language(
        language: 'arabic'.tr,
        languageCode: Const.KEY_LANGUAGE_AR,
        isSelected: true),
    Language(
        language: 'english'.tr,
        languageCode: Const.KEY_LANGUAGE_EN,
        isSelected: false),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //بجيب الوكل تاع التطبيق حاليا لغة الجهاز حاليا بناء عليها بعمل فحص عشان اجيب اللغه
  Locale? getAppLocale() {
    String? language = PreferencesManager.getAppData(key: Const.KEY_LANGUAGE);
    if (language == Const.KEY_LANGUAGE_AR) {
      return const Locale('ar');
    } else if (language == Const.KEY_LANGUAGE_EN) {
      return const Locale('en');
    } else {
      return const Locale('en');
    }
  }

  void saveLanguage(String codeLang) {
    Locale locale = Locale(codeLang);
    PreferencesManager.saveAppData(key: Const.KEY_LANGUAGE, value: codeLang);
    Get.updateLocale(locale);
  }






  void showLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (con) => AlertDialog(
              content: Container(
                  width: 400,
                  height: 210,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(26)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 11.h,
                      ),
                      // AppText.medium(
                      //   text: 'chose_language',
                      //   color: Colors.black,
                      //   fontWeight: FontWeight.w700,
                      //   fontSize: 16.sp,
                      // ),
                      Divider(height: 4.h, color: Colors.black),
                      SizedBox(
                        height: 8.h,
                      ),
                      Expanded(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listLanguages.length,
                          itemBuilder: (context, index) =>
                              GetBuilder<SettingsController>(
                                  builder: (controller) {
                            return Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                width: 120.w,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5).r,
                                  border: Border.all(
                                      color: controller
                                              .listLanguages[index].isSelected
                                          ? HexColor(AppColors.appMainColor)
                                          : AppColors.lightGray),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: controller
                                          .listLanguages[index].languageCode,
                                      groupValue: controller.languageSelected,
                                      activeColor:
                                          HexColor(AppColors.appMainColor),
                                      onChanged: (value) {
                                        for (Language language
                                            in controller.listLanguages) {
                                          language.isSelected = false;
                                        }
                                        controller.listLanguages[index]
                                            .isSelected = true;
                                        controller.languageSelected =
                                            value.toString();
                                        controller.saveLanguage(
                                            controller.languageSelected);
                                        controller.update();
                                        Navigator.pop(context);
                                      },
                                    ),
                                    AppText.medium(
                                        text: controller
                                            .listLanguages[index].language,
                                        color: AppColors.lightBlack,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ],
                                ));
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  )),
            ));
  }

  void showLogoutBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 320,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 50,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(height: 20),
                AppText.larg(
                    text: 'logout', fontSize: 20, fontWeight: FontWeight.w700),
                SizedBox(height: 14),
                AppText.larg(
                    text: 'text_log_out',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          margin: EdgeInsetsDirectional.only(top: 30, end: 10),
                          width: double.infinity,
                          child: ElevatedButton(child: Text('Log out'), onPressed: (){},)

                         /* AppWidgets.CustomButton(
                              radius: 8,
                              background: HexColor(AppColors.appMainColor),
                              borderColor: HexColor(AppColors.appMainColor),
                              text: 'log_out'.tr,
                              isUpperCase: false,
                              click: () {
                                PreferencesManager.clearData(
                                    key: Const.KEY_BOARDING);
                                Get.toNamed(Routes.splash);
                              })*/

                      ),
                    ),
                    Expanded(
                      child: Container(
                          width: double.infinity,
                          margin:
                              EdgeInsetsDirectional.only(top: 30, start: 10),
                          child: ElevatedButton(child: Text('Cancel'), onPressed: (){},)

                        /*  AppWidgets.CustomButton(
                              radius: 8,
                              background: AppColors.lightWhite,
                              borderColor: HexColor(AppColors.appMainColor),
                              text: 'cancel'.tr,
                              textColor: HexColor(AppColors.appMainColor),
                              isUpperCase: false,
                              click: () => Navigator.pop(context))*/
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          );
        });
  }
}
