import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeeScreen extends StatefulWidget {
  const FeeScreen({Key? key}) : super(key: key);

  @override
  State<FeeScreen> createState() => _FeeScreenState();
}

class _FeeScreenState extends State<FeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          'Fee',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8).r,
                color: Color(0xffb9c4cd),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'card',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                    Text(
                      'Merchant',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                    Text(
                      'Client',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 37.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8).r,
                color: const Color(0xfff1f3f5),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'kent',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                    Text(
                      '3%',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                    Text(
                      '350fils',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8).r,
                color: const Color(0xfff1f3f5),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'kent',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                    Text(
                      '3%',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                    Text(
                      '350fils',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8).r,
                color: Color(0xfff1f3f5),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'kent',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                    Text(
                      '3%',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                    Text(
                      '350fils',
                      style: TextStyle(
                        color: const Color(0xff0E3255),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
