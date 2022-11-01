import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          'Card',
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
            height: 35.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 19),
            child: Text(
              'Civil ID documentation',
              style: TextStyle(
                color: const Color(0xff0E3255),
                fontWeight: FontWeight.w500,
                fontSize: 16.h,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {},
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                alignment: AlignmentDirectional.center,
                width: 343.w,
                height: 165.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffD9D9D9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 35.h,
                          color: const Color(0xff91a3b0),
                        )),
                    SizedBox(
                      height: 8.h,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Add civil ID',
                        style: TextStyle(
                          color: const Color(0xff0E3255),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 19),
            child: Text(
              'Bank card authentication',
              style: TextStyle(
                color: const Color(0xff0E3255),
                fontWeight: FontWeight.w500,
                fontSize: 16.h,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {},
            child: InkWell(
              onTap: () {},
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Container(
                  alignment: AlignmentDirectional.center,
                  width: 343.w,
                  height: 165.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8).r,
                    color: const Color(0xffD9D9D9),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 35.h,
                            color: const Color(0xff91a3b0),
                          )),
                      SizedBox(
                        height: 8.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Add a bank card',
                          style: TextStyle(
                            color: const Color(0xff0E3255),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 59.h,
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
                  'Add card  ',
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
        ],
      ),
    );
  }
}
