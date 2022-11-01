
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
class WidgetTextFaildCompanies extends StatelessWidget {
  const WidgetTextFaildCompanies({
    Key? key,
    required TextEditingController fierstnameTextController, required this.text,
  }) : _TextController = fierstnameTextController, super(key: key);

  final TextEditingController _TextController;
  final String text;


  @override
  Widget build(BuildContext context) {
    return     Padding(

      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),

      child:   TextField(

        keyboardType: TextInputType.name,


        controller: _TextController,



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



            Icons.person,



            color: Color(0xff0E3255),



            size: 18,



          ),



          labelText: text,



          labelStyle: TextStyle(



              fontSize: 13.sp,



              fontStyle: FontStyle.italic,



              color: const Color(0xff4a6269
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