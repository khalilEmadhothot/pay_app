import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
class CreateStore extends StatefulWidget {
  const CreateStore({Key? key}) : super(key: key);

  @override
  State<CreateStore> createState() => _CreateStoreState();
}

class _CreateStoreState extends State<CreateStore> {
  late TextEditingController _namestoreTextController;
  late TextEditingController _desTextController;


  @override
  void initState() {
    super.initState();
    _namestoreTextController = TextEditingController();
    _desTextController = TextEditingController();

  }

  @override
  void dispose() {
    _namestoreTextController.dispose();
    _desTextController.dispose();

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
SizedBox(height:28.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: Text('Create your online store',style: TextStyle(
                color: const Color(0xff0E3255),
                fontWeight: FontWeight.w500,
              fontSize: 18.h
              ),),
            ),
            SizedBox(height:23.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: Text('name store',style: TextStyle(
                  color: const Color(0xff0E3255),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.h
              ),),
            ),
            SizedBox(height:6.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
              child: TextField(
                keyboardType: TextInputType.name,
               controller: _namestoreTextController,
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
                  prefixIcon: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: const Color(0xff0E3255),
                    size: 23.h,

                  ),
                  labelText: '',
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
                    borderSide:
                    BorderSide(color: const Color(0xff0E3255), width: 1.5.w),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  constraints: BoxConstraints(
                    maxHeight: 282.h,
                    minWidth: 48.w,
                  ),
                ),
              ),
            ),
            SizedBox(height:16.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: Text('description store',style: TextStyle(
                  color: const Color(0xff0E3255),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.h
              ),),
            ),
            SizedBox(height:6.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
              child: TextField(
                keyboardType: TextInputType.name,
                controller: _desTextController,
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
                  prefixIcon: Icon(
                    Icons.description_outlined ,
                    color: const Color(0xff0E3255),
                    size: 23.h,

                  ),
                  labelText: '',
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
                    borderSide:
                    BorderSide(color: const Color(0xff0E3255), width: 1.5.w),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  constraints: BoxConstraints(
                    maxHeight: 282.h,
                    minWidth: 48.w,
                  ),
                ),
              ),
            ),
            SizedBox(height:16.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: Text('Add cover photo',style: TextStyle(
                  color: const Color(0xff0E3255),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.h
              ),),
            ),
            SizedBox(height:6.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15,end: 15),
              child: SizedBox(
                width: double.infinity.w,
                height: 150.h,
                child: Card(
                  elevation: 5,
                  color: const Color(0xff0E3255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15).r,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_photo_alternate,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height:16.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: Text('Add a profile picture',style: TextStyle(
                  color: const Color(0xff0E3255),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.h
              ),),
            ),
            SizedBox(height:6.h,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15,end: 15),
              child: SizedBox(
                width: double.infinity.w,
                height: 150.h,
                child: Card(
                  elevation: 5,
                  color: const Color(0xff0E3255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15).r,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_photo_alternate,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height:36.h,),
            Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 33, start: 33),
                child: ElevatedButton(
                  onPressed: () async {
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8).r,
                    ),
                    minimumSize: Size(307.w, 48.h),
                    primary: const Color(0xffF58A07),
                  ),
                  child: Text(
                    'Create',
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
            SizedBox(height:36.h,),
          ],
        ),
      ),
    );
  }
}
