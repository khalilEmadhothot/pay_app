import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class widget_text_companies extends StatelessWidget {
  const widget_text_companies({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 17),
      child: Text(
        name,
        style: TextStyle(
          color: const Color(0xff0E3255),
          fontWeight: FontWeight.w500,
          fontSize: 14.h,
        ),
      ),
    );
  }
}