import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pay_app/controller/settings_controller.dart';
import 'package:pay_app/utils/constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final SettingsController _controller = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          'settings'.tr,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22.h),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(11.0),
              bottomLeft: Radius.circular(11.0)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 23,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 54,
                child: Image.asset(
                  '${Const.images}images_settings.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'name_'.tr,
                style: TextStyle(
                  color: const Color(0xff0E3255),
                  fontSize: 18.h,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.person_outline_rounded,
                        color: Color(0xff0E3255),
                        size: 27,
                      ),
                      SizedBox(
                        width: 19.h,
                      ),
                      Text(
                        'Profile_personly'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontSize: 15.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff0E3255),
                        size: 17,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.share,
                        color: Color(0xff0E3255),
                        size: 22,
                      ),
                      SizedBox(
                        width: 19.h,
                      ),
                      Text(
                        'Share_app'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontSize: 15.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff0E3255),
                        size: 17,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.message,
                        color: Color(0xff0E3255),
                        size: 22,
                      ),
                      SizedBox(
                        width: 19.h,
                      ),
                      Text(
                        'Connect_with_us'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontSize: 15.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff0E3255),
                        size: 17.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.menu_book,
                        color: Color(0xff0E3255),
                        size: 22,
                      ),
                      SizedBox(
                        width: 19.h,
                      ),
                      Text(
                        'information_about_us'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontSize: 15.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff0E3255),
                        size: 17.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.policy_outlined,
                        color: Color(0xff0E3255),
                        size: 22,
                      ),
                      SizedBox(
                        width: 19.h,
                      ),
                      Text(
                        'privacy_policy'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontSize: 15.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff0E3255),
                        size: 17.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => _controller.showLanguageDialog(context),
                    child: Container(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.language,
                            color: Color(0xff0E3255),
                            size: 22,
                          ),
                          SizedBox(
                            width: 19.h,
                          ),
                          InkWell(
                            onTap: () {
                              _controller.showLanguageDialog(context);
                            },
                            child: Text(
                              'language'.tr,
                              style: TextStyle(
                                color: const Color(0xff0E3255),
                                fontSize: 15.h,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff0E3255),
                        size: 17.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.monetization_on_outlined,
                        color: Color(0xff0E3255),
                        size: 22,
                      ),
                      SizedBox(
                        width: 19.h,
                      ),
                      Text(
                        'Commission_settings'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontSize: 15.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff0E3255),
                        size: 17.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.logout,
                        color: Color(0xff0E3255),
                        size: 22,
                      ),
                      SizedBox(
                        width: 19.h,
                      ),
                      Text(
                        'Logout'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontSize: 15.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff0E3255),
                        size: 17.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
