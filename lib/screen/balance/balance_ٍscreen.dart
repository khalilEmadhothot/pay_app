import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          'Store',
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
              height: 41.h,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Balance',
                style: TextStyle(
                  fontSize: 24.h,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff0E3255),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                width: 344.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8).r,
                  border: Border.all(color: const Color(0xff0E3255), width: 1.w),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 16, end: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your actual balance:',
                        style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff0E3255),
                        ),
                      ),
                      Text(
                        'KWD1245.34',
                        style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffF58A07),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                width: 344.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8).r,
                  border: Border.all(color: const Color(0xff0E3255), width: 1.w),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 16, end: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amounts required for withdrawal:',
                        style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff0E3255),
                        ),
                      ),
                      Text(
                        'KWD1245.34',
                        style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffF58A07),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                width: 344.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8).r,
                  border: Border.all(color: const Color(0xff0E3255), width: 1.w),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 16, end: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your current balance:',
                        style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff0E3255),
                        ),
                      ),
                      Text(
                        'KWD1245.34',
                        style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffF58A07),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
