import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pay_app/controller/launch_controller.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/utils/constants.dart';
import 'package:pay_app/utils/preferences_manager.dart';

class LaunchScreen extends GetView<LaunchController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Image.asset(
                'images/logo_app.png',
              )),
        ],
      ),
    );
  }
}