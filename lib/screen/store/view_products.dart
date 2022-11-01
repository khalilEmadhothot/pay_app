import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
class ViewProduct extends StatefulWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
SizedBox(height: 26.h,),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 344.w,
              height: 238.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10).r,
                  topRight: const Radius.circular(10).r,
                ),
              ),
              child: Image.asset( 'images/image_store.png',fit: BoxFit.cover,width: double.infinity,
              height: double.infinity,),
            ),
          ),
          SizedBox(height: 23.h,),
Padding(
  padding: const EdgeInsetsDirectional.only(start: 16,end: 16),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [

      Text(

        'Autumn blouse',

        style: TextStyle(

            color: const Color(0xff0E3255),

            fontWeight: FontWeight.w700,

            fontSize: 16.h),

      ),



      Text(

        'KWD45.34',

        style: TextStyle(

            color: const Color(0xff0E3255),

            fontWeight: FontWeight.w600,

            fontSize: 12.h),

      ),

    ],

  ),
),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Store Khalil Store Khalil Store Khalil Store Khalil Store Khalil\nStore Khalil Store KhalilStore Khalil Store Khalil Store  Store\n Store Khalil Store Khalil Store Khalil Store Khalil Store Khalil',
                style: TextStyle(
                    color: const Color(0xff0E3255),
                    height: 1.5.h,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.h),
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
          ),

          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Text(

              'Size',

              style: TextStyle(

                  color: const Color(0xff0E3255),

                  fontWeight: FontWeight.w700,

                  fontSize: 16.h),

            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: AlignmentDirectional.center,
                  width:37.w ,
                  height: 37.h,
                  decoration: BoxDecoration(
                    color: Color(0xff0E3255),
                    borderRadius: BorderRadius.circular(40).r
                  ),
                  child: Text('S',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.h,
                  ),),
                ),
                SizedBox(width: 12.w,),
                Container(
                  alignment: AlignmentDirectional.center,
                  width:37.w ,
                  height: 37.h,
                  decoration: BoxDecoration(
                      color: Color(0xff0E3255),
                      borderRadius: BorderRadius.circular(40).r
                  ),
                  child: Text('S',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.h,
                  ),),
                ),
                SizedBox(width: 12.w,),
                Container(
                  alignment: AlignmentDirectional.center,
                  width:37.w ,
                  height: 37.h,
                  decoration: BoxDecoration(
                      color: Color(0xff0E3255),
                      borderRadius: BorderRadius.circular(40).r
                  ),
                  child: Text('S',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.h,
                  ),),
                ),
                SizedBox(width: 12.w,),
                Container(
                  alignment: AlignmentDirectional.center,
                  width:37.w ,
                  height: 37.h,
                  decoration: BoxDecoration(
                      color: Color(0xff0E3255),
                      borderRadius: BorderRadius.circular(40).r
                  ),
                  child: Text('S',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.h,
                  ),),
                ),
                SizedBox(width: 12.w,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
