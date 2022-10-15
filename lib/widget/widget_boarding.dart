import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class widget_boarding extends StatelessWidget {
  const widget_boarding({
    Key? key, required this.ImagePage, required this.Title,  required this.Title2,
  }) : super(key: key);
  final String ImagePage;
  final String Title;

  final String Title2;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 158.h
            ,),
          Align(
            alignment: AlignmentDirectional.center,
            child: Image.asset(
              ImagePage,
            ),
          ),
          SizedBox(height: 51.h,),
          Align(
            alignment: AlignmentDirectional.center,
            child: Text(Title,style: TextStyle(
fontWeight: FontWeight.bold,
              fontSize: 24.h,
              color: Colors.black
            ),),
          ),
          SizedBox(height: 13.h,),
          Align(
            alignment:AlignmentDirectional.center,
            child: Text(Title2,style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18.h
              ,
                height: 1.2.h
              ,
            ),),
          ),
        ],
      )
    );
  }
}