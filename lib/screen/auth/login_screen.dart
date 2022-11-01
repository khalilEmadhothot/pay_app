import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_app/controller/login_controller.dart';


class LoginScreen extends GetView<LoginController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'sign_in'.tr,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22.h),
        ),
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
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
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 69.h,
              ),
              SizedBox(
                height: 42.h,
              ),
              Container(
                width: 307.w,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16).r,
                  color: const Color(0xffEDF7FF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 42.h,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 17),
                      child: Text(
                        'Merchant_code'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.h,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(end: 15, start: 15),
                      child: TextField(
                        controller: controller.codeTextController,
                        keyboardType: TextInputType.name,
                        onTap: () {},
                        onChanged: (String value) {},
                        cursorColor: Colors.black,
                        cursorWidth: 1.3.w,
                        cursorRadius: const Radius.circular(10).r,
                        enabled: true,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Colors.black),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Color(0xff0E3255),
                              size: 18,
                            ),
                            labelText: 'Merchant_code'.tr,
                            labelStyle: TextStyle(
                                fontSize: 16.sp,
                                fontStyle: FontStyle.italic,
                                color: const Color(0xff0E3255),
                                fontWeight: FontWeight.w400),
                            fillColor: const Color(0xffFAFAFA),
                            filled: true,
                            helperMaxLines: 2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff0E3255), width: 1.w),
                              borderRadius: BorderRadius.circular(8).r,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff0E3255), width: 1.5.w),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            constraints: BoxConstraints(
                              maxHeight: 282.h,
                              minWidth: 48.w,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 17),
                      child: Text(
                        'password'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.h,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(end: 15, start: 15),
                      child: GetBuilder<LoginController>(builder: (controller) => TextFormField(
                        controller: controller.passwordTextController,
                        obscureText: controller.isVisiblePass,
                        obscuringCharacter: '•',
                        keyboardType: TextInputType.visiblePassword,
                        onTap: () {},
                        onChanged: (String value) {},
                        cursorColor: Colors.black,
                        cursorWidth: 1.3.w,
                        cursorRadius: const Radius.circular(10).r,
                        enabled: true,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Colors.black),
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              child: Icon(controller.visiblePassIcon, color: Colors.black),
                              onTap: () => controller.visiblePassword(),
                            ),
                            labelText: '••••••••',
                            labelStyle: TextStyle(
                                fontSize: 16.sp,
                                fontStyle: FontStyle.italic,
                                color: const Color(0xff0E3255),
                                fontWeight: FontWeight.w400),
                            fillColor: const Color(0xffFAFAFA),
                            filled: true,
                            helperMaxLines: 2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff0E3255), width: 1.w),
                              borderRadius: BorderRadius.circular(8).r,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff0E3255), width: 1.5.w),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            constraints: BoxConstraints(
                              maxHeight: 282.h,
                              minWidth: 48.w,
                            )),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 33, start: 33),
                  child: ElevatedButton(
                    onPressed: () async {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8).r,
                      ),
                      minimumSize: Size(307.w, 48.h),
                      primary: const Color(0xff0E3255),
                    ),
                    child: Text(
                      'sign_in'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 33, start: 33),
                  child: ElevatedButton(
                    onPressed: () async {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8).r,
                      ),
                      minimumSize: Size(307.w, 48.h),
                      primary: const Color(0xffF58A07),
                    ),
                    child: Text(
                      'New_registration'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.h,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'usually_password'.tr,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.h),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
