import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutBoardingIndicator extends StatelessWidget {
  const OutBoardingIndicator({
    Key? key,
    this.marginEnd = 0,
    required this.selected,
  }) : super(key: key);

  final double marginEnd;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width: 13.w,
      height: 13.h,
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF58A07) : Color(0xffFAC898),
        borderRadius: BorderRadius.circular(20).r,
      ),
    );
  }
}
