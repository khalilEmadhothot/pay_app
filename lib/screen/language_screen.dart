import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pay_app/controller/settings_controller.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/screen/auth/login_screen.dart';
import 'package:pay_app/utils/constants.dart';


class LanguageScreen extends GetView<SettingsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 87.h,
              ),
              Align(
                  alignment: AlignmentDirectional.center,
                  child: Image.asset(
                    '${Const.images}boarding1.png',
                    height: 200.h,
                    width: 200,
                  )),
              SizedBox(
                height: 111.h,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetBuilder<SettingsController>(builder: (controller) => Column(
                      children: [
                        Stack(
                          //'images/image_client.png'
                          children: [
                            InkWell(
                              child: Container(
                                width: 150.w,
                                height: 165.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDF7FF),
                                  borderRadius: BorderRadius.circular(20).r,
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: AlignmentDirectional.topEnd,
                                        child: RadioListTile<String>(
                                          activeColor: Colors.black,
                                          contentPadding: EdgeInsets.zero,
                                          title: const Text(''),
                                          selected: controller.userSelected,
                                          value: 'C',
                                          groupValue: controller.userType,
                                          onChanged: (String? value) {
                                            if (value != null) {
                                              controller.userType = value;
                                              controller.update();
                                              Get.off(LoginScreen(userType: controller.userType));
                                            }
                                          },
                                        )
                                    ),
                                    Align(
                                        alignment: AlignmentDirectional.center,
                                        child: Image.asset(
                                          '${Const.icons}icon_client.png',
                                          fit: BoxFit.contain,
                                          height: 100,
                                        )),
                                  ],
                                ),
                              ),
                              onTap: () {
                                controller.userSelected = true;
                                controller.update();
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Client'.tr,
                          style: TextStyle(
                            fontSize: 17.h,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff0E3255),
                          ),
                        ),
                      ],
                    )),
                    GetBuilder<SettingsController>(builder: (controller) => Column(
                      children: [
                        Stack(
                          children: [
                            InkWell(
                              child: Container(
                                width: 150.w,
                                height: 165.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDF7FF),
                                  borderRadius: BorderRadius.circular(20).r,
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional.topEnd,
                                      child: RadioListTile<String>(
                                        selected: controller.userSelected,
                                        activeColor: Colors.black,
                                        contentPadding: EdgeInsets.zero,
                                        title: const Text(''),
                                        value: 'F',
                                        groupValue: controller.userType,
                                        onChanged: (String? value) {
                                          if (value != null) {
                                            controller.userType = value;
                                            controller.update();
                                            Get.off(LoginScreen(userType: controller.userType));
                                          }
                                        },
                                      )
                                    ),
                                    Align(
                                        alignment: AlignmentDirectional.center,
                                        child: Image.asset(
                                          '${Const.icons}icon_merchant.png',
                                          fit: BoxFit.contain,
                                          height: 95,
                                        )),
                                  ],
                                ),
                              ),
                              onTap: () {
                                controller.userSelected = true;
                                print('SELECTED: ${controller.userSelected}');
                                controller.update();
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Merchant'.tr,
                          style: TextStyle(
                            fontSize: 17.h,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff0E3255),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 83.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 4,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.saveLanguage(Const.KEY_LANGUAGE_EN);
                        controller.update();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8).r,
                        ),
                        minimumSize: Size(80.68.w, 48.h),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'English'.tr,
                            style: TextStyle(
                              color: const Color(0xff0E3255),
                              fontWeight: FontWeight.w600,
                              fontSize: 17.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 10),
                          Image.asset('${Const.icons}icon_english.png')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Card(
                    elevation: 4,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.saveLanguage(Const.KEY_LANGUAGE_AR);
                        controller.update();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8).r,
                        ),
                        minimumSize: Size(80.68.w, 48.h),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Arabic'.tr,
                            style: TextStyle(
                              color: const Color(0xff0E3255),
                              fontWeight: FontWeight.w600,
                              fontSize: 17.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 10),
                          SvgPicture.asset('${Const.icons}icon_arabic.svg')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}