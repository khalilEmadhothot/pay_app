import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class WidgetTextSettings extends StatelessWidget {
  const WidgetTextSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16),
      child: Text('About the app',style: TextStyle(
        color: const Color(0xff0E3255),
        fontWeight: FontWeight.w700,
        fontSize: 16.h,
      ),),
    );
  }
}
