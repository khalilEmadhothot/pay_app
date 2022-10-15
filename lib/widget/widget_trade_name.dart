import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class WidgetTradeName extends StatelessWidget {
  const WidgetTradeName({
    Key? key,
    required TextEditingController tradenameTextController,
  }) : _tradenameTextController = tradenameTextController, super(key: key);

  final TextEditingController _tradenameTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),

      child:   TextField(

        keyboardType: TextInputType.name,

        controller: _tradenameTextController,



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



            Icons.maps_home_work_outlined,



            color: Color(0xff0E3255),



            size: 18,



          ),



          labelText: 'Business name',



          labelStyle: TextStyle(



              fontSize: 13.sp,



              fontStyle: FontStyle.italic,



              color: const Color(0xffb3baa6
              ),



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



            minWidth: 48.w,),



        ),



      ),

    );
  }
}