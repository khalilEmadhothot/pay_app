import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          'Settings',
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 39.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 54,
              child: Image.asset(
                'images/images_settings.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          SizedBox(height:26 .h,),
          Align(
            alignment: AlignmentDirectional.center,
            child: Text('Ahmed Khaled ',style: TextStyle(
              color: const Color(0xff0E3255),
              fontSize: 18.h,
              fontWeight: FontWeight.w600,
            ),),
          ),
          SizedBox(height:50 .h,),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 19,end: 10),
            child: Row(
mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const Icon(Icons.person_outline_rounded,color: Color(0xff0E3255),size: 27,),
                SizedBox(width: 19.h,),
                Text('Profile personly',style: TextStyle(
                  color: const Color(0xff0E3255),
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(width: 168.h,),
                const Icon(Icons.arrow_forward_ios,color: Color(0xff0E3255),size: 17,),
              ],
            ),
          ),
          SizedBox(height:35 .h,),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 19,end: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const Icon(Icons.share,color: Color(0xff0E3255),size: 27,),
                SizedBox(width: 19.h,),
                Text('Share app',style: TextStyle(
                  color: const Color(0xff0E3255),
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(width: 212.h,),
                const Icon(Icons.arrow_forward_ios,color: Color(0xff0E3255),size: 17,),
              ],
            ),
          ),
          SizedBox(height:35 .h,),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 19,end: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.message,color: Color(0xff0E3255),size: 27,),
                SizedBox(width: 19.h,),
                Text('Connect with us',style: TextStyle(
                  color: const Color(0xff0E3255),
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(width: 168.h,),
                 Icon(Icons.arrow_forward_ios,color: Color(0xff0E3255),size: 17.h,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
