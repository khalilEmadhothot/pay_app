import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_app/screen/auth/companies_login.dart';

class DetailsProcesses extends StatefulWidget {
  const DetailsProcesses({Key? key}) : super(key: key);

  @override
  State<DetailsProcesses> createState() => _DetailsProcessesState();
}

class _DetailsProcessesState extends State<DetailsProcesses> {
  late TextEditingController _phoneTextController;
  late TextEditingController _amountTextController;
  late TextEditingController _operationdateTextController;

  @override
  void initState() {
    super.initState();
    _phoneTextController = TextEditingController();
    _amountTextController = TextEditingController();
    _operationdateTextController = TextEditingController();
  }

  @override
  void dispose() {
    _phoneTextController.dispose();
    _amountTextController.dispose();
    _operationdateTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          'Details Processes',
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
              height: 30.h,
            ),
            const widget_text_companies(
              name: 'Name',
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _phoneTextController,
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
                    Icons.call,
                    color: Color(0xff0E3255),
                    size: 18,
                  ),
                  labelText: '966598113864',
                  labelStyle: TextStyle(
                      fontSize: 13.sp,
                      fontStyle: FontStyle.italic,
                      color: const Color(0xffb3baa6),
                      fontWeight: FontWeight.w400),
                  fillColor: const Color(0xffFAFAFA),
                  filled: true,
                  helperMaxLines: 2,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: const Color(0xff0E3255), width: 1.w),
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
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'amount',
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _amountTextController,
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
                    Icons.call,
                    color: Color(0xff0E3255),
                    size: 18,
                  ),
                  labelText: '966598113864',
                  labelStyle: TextStyle(
                      fontSize: 13.sp,
                      fontStyle: FontStyle.italic,
                      color: const Color(0xffb3baa6),
                      fontWeight: FontWeight.w400),
                  fillColor: const Color(0xffFAFAFA),
                  filled: true,
                  helperMaxLines: 2,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: const Color(0xff0E3255), width: 1.w),
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
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Operation date',
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
              child: TextField(
                keyboardType: TextInputType.datetime,
                controller: _operationdateTextController,
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
                    Icons.date_range,
                    color: Color(0xff0E3255),
                    size: 18,
                  ),
                  labelText: ' 2022-09-26',
                  labelStyle: TextStyle(
                      fontSize: 13.sp,
                      fontStyle: FontStyle.italic,
                      color: const Color(0xffb3baa6),
                      fontWeight: FontWeight.w400),
                  fillColor: const Color(0xffFAFAFA),
                  filled: true,
                  helperMaxLines: 2,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: const Color(0xff0E3255), width: 1.w),
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
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'commission',
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
              child: TextField(
                keyboardType: TextInputType.datetime,
                controller: _operationdateTextController,
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
                    Icons.date_range,
                    color: Color(0xff0E3255),
                    size: 18,
                  ),
                  labelText: 'KWD0.67',
                  labelStyle: TextStyle(
                      fontSize: 13.sp,
                      fontStyle: FontStyle.italic,
                      color: const Color(0xffb3baa6),
                      fontWeight: FontWeight.w400),
                  fillColor: const Color(0xffFAFAFA),
                  filled: true,
                  helperMaxLines: 2,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: const Color(0xff0E3255), width: 1.w),
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
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'state',
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
              child: TextField(
                keyboardType: TextInputType.datetime,
                controller: _operationdateTextController,
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
                    Icons.check,
                    color: Color(0xff3EB142),
                  ),
                  labelText: 'KWD0.67',
                  labelStyle: TextStyle(
                      fontSize: 13.sp,
                      fontStyle: FontStyle.italic,
                      color: const Color(0xffb3baa6),
                      fontWeight: FontWeight.w400),
                  fillColor: const Color(0xffFAFAFA),
                  filled: true,
                  helperMaxLines: 2,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: const Color(0xff0E3255), width: 1.w),
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
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 43.h,
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
                    'Invoice printing',
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
      ),
    );
  }
}
