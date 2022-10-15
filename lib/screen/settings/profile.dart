import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Profial extends StatefulWidget {
  const Profial({Key? key}) : super(key: key);

  @override
  State<Profial> createState() => _ProfialState();
}

class _ProfialState extends State<Profial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text('Profile personly',style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22.h),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(11.0),
              bottomLeft: Radius.circular(11.0)),
        ),
        leading: IconButton(onPressed: (){},icon: const Icon(Icons.pages_sharp, color: Colors.white,
          size: 23,),),
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
          SizedBox(height:60.h,),
          const widget_profile(text1: 'Trade Name:', text2: 'khalil hothot',),
          SizedBox(height:30.h,),
          const widget_profile(text1: 'bank:', text2: 'Pelestion',),
          SizedBox(height:30.h,),
          const widget_profile(text1: 'IBAN::', text2: 'TWE444444445',),
          SizedBox(height:30.h,),
          const widget_profile(text1: 'Phone', text2: '0598113864',),
          SizedBox(height:30.h,),
          const widget_profile(text1: 'E-mail:', text2: 'hthtkhlyl24@gmail.com',),
          SizedBox(height:30.h,),
          const widget_profile(text1: 'Facebook link:', text2: 'https://www.facebook.com/ahmed.',),
          SizedBox(height:30.h,),
          const widget_profile(text1: 'Instagram link:', text2: 'https://www.facebook.com/ahmed.',),
          

        ],
      ),
    );
  }
}

class widget_profile extends StatelessWidget {
  const widget_profile({
    Key? key, required this.text1, required this.text2,
  }) : super(key: key);
final String text1;
final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1,style: TextStyle(
            color: const Color(0xff0E3255),
            fontSize:14.h,
            fontWeight: FontWeight.w500,
          ),),
          SizedBox(width: 30.w,),
          Text(text2,style: TextStyle(
            color:Colors.indigo[300],
            fontSize:14.h,
            fontWeight: FontWeight.w500,
          ),),
        ],
      ),
    );
  }
}
