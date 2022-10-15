import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class widget_button extends StatelessWidget {
  const widget_button({
    Key? key, required this.name,
  }) : super(key: key);
final String name;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(end: 33, start: 33),
        child: ElevatedButton(
          onPressed: () async {
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8).r,
            ),
            minimumSize: Size(307.w, 48.h),
            primary: const Color(0xffF58A07),
          ),
          child: Text(
   name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
            ),
            textAlign: TextAlign.center,
          ),

        ),
      ),
    );
  }
}