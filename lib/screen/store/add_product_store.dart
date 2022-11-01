import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:pay_app/screen/auth/companies_login.dart';
import 'package:pay_app/widget/widget_faild_companies.dart';

class AddProductStore extends StatefulWidget {
  const AddProductStore({Key? key}) : super(key: key);

  @override
  State<AddProductStore> createState() => _AddProductStoreState();
}

class _AddProductStoreState extends State<AddProductStore> {
  String available = 'M';
  late TextEditingController _namestoreTextController;
  late TextEditingController _desTextController;
  late TextEditingController _ProductpriceTextController;

  @override
  void initState() {
    super.initState();
    _namestoreTextController = TextEditingController();
    _desTextController = TextEditingController();
    _ProductpriceTextController = TextEditingController();
  }

  @override
  void dispose() {
    _namestoreTextController.dispose();
    _desTextController.dispose();
    _ProductpriceTextController.dispose();
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
            SizedBox(
              height: 26.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: Text(
                'Create Store',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            const widget_text_companies(
              name: 'Store name',
            ),
            SizedBox(
              height: 6.h,
            ),
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
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'description',
            ),
            SizedBox(
              height: 12.h,
            ),
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
                    Icons.description_outlined,
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
                    maxWidth: double.infinity.h,
                    maxHeight: 70.w,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Product price',
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _ProductpriceTextController,
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
                    Icons.price_check_sharp ,
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
                    maxWidth: double.infinity.h,
                    maxHeight: 70.w,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Add photos of your product',
            ),
            SizedBox(
              height: 12.h,
            ),
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
                      Icons.add_a_photo,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        activeColor: Color(0xff0E3255),
                        contentPadding: EdgeInsets.zero,
                        title: const Text('available'),
                        value: 'M',
                        groupValue: available,
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              available = value;
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        activeColor: Color(0xff0E3255),
                        contentPadding: EdgeInsets.zero,
                        title: const Text('not available'),
                        value: 'F',
                        groupValue: available,
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              available = value;
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Add photos of your product',
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              width: 150.w,
              height: 150.h,
              child: Card(
                elevation: 5,
                color: Color(0xff0E3255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15).r,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                    size: 40,
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

class widget_work_hours extends StatelessWidget {
  const widget_work_hours({
    Key? key,
    required TextEditingController workhoursTextController,
  })  : _workhoursTextController = workhoursTextController,
        super(key: key);

  final TextEditingController _workhoursTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: _workhoursTextController,
        onTap: () {},
        onChanged: (String value) {},
        cursorColor: Colors.black,
        cursorWidth: 1.3.w,
        cursorRadius: const Radius.circular(10).r,
        enabled: true,
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 16.sp, color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.person,
            color: Color(0xff0E3255),
            size: 18,
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
            borderSide: BorderSide(color: const Color(0xff0E3255), width: 1.w),
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
    );
  }
}
