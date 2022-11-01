import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoseLanguage extends StatefulWidget {
  const ChoseLanguage({Key? key}) : super(key: key);

  @override
  State<ChoseLanguage> createState() => _ChoseLanguageState();
}

class _ChoseLanguageState extends State<ChoseLanguage> {
  String _gender = '';

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
                    'images/image_page_view_one.png',
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
                    Column(
                      children: [
                        Stack(
                          //'images/image_client.png'
                          children: [
                            Container(
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
                                      value: 'C',
                                      groupValue: _gender,
                                      onChanged: (String? value) {
                                        if (value != null) {
                                          setState(() {
                                            _gender = value;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                  Align(
                                      alignment: AlignmentDirectional.center,
                                      child: Image.asset(
                                        'images/image_client.png',
                                        fit: BoxFit.contain,
                                        height: 100,
                                      )),
                                ],
                              ),
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
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
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
                                      value: 'F',
                                      groupValue: _gender,
                                      onChanged: (String? value) {
                                        if (value != null) {
                                          setState(() {
                                            _gender = value;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                  Align(
                                      alignment: AlignmentDirectional.center,
                                      child: Image.asset(
                                        'images/image_merchant.png',
                                        fit: BoxFit.contain,
                                        height: 95,
                                      )),
                                ],
                              ),
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
                    ),
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
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8).r,
                        ),
                        minimumSize: Size(117.68.w, 48.h),
                        primary: Colors.white,
                      ),
                      child: Text(
                        'الانجليزيه'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Card(
                    elevation: 4,
                    child: ElevatedButton(
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8).r,
                        ),
                        minimumSize: Size(117.68.w, 48.h),
                        primary: Colors.white,
                      ),
                      child: Text(
                        'العربيه'.tr,
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
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
