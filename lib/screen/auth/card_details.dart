import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_app/screen/auth/companies_login.dart';
import 'package:pay_app/widget/widget_faild_companies.dart';
class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  late TextEditingController _nameTextController;
  late TextEditingController _cardnumberTextController;
  late TextEditingController _exirationdateTextController;
  late TextEditingController _cvvTextController;
  @override
  void initState() {
    super.initState();
    _nameTextController = TextEditingController();
    _cardnumberTextController = TextEditingController();
    _exirationdateTextController = TextEditingController();
    _cvvTextController = TextEditingController();
  }

  @override
  void dispose() {
    _nameTextController.dispose();
    _cardnumberTextController.dispose();
    _exirationdateTextController.dispose();
    _cvvTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        title: Text('Card',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 22.h
        ),),
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
            SizedBox(height: 32.h,),
            const widget_text_companies(
              name: 'Name',),
            SizedBox(height: 12.h,),
            WidgetTextFaildCompanies(
              text: 'Name',
              fierstnameTextController: _nameTextController,),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Card Number',
            ),
            SizedBox(
              height: 12.h,
            ),
            WidgetTextFaildCompanies(
              text: 'Card Number',
              fierstnameTextController: _cardnumberTextController,
            ),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Expiration date',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_trade_name(
                tradenameTextController: _exirationdateTextController),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Buyer No',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_cvv(cvvTextController: _cvvTextController),
            SizedBox(
              height: 100.h,
            ),
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
                    'إضافة البطاقة',
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

class widget_cvv extends StatelessWidget {
  const widget_cvv({
    Key? key,
    required TextEditingController cvvTextController,
  }) : _cvvTextController = cvvTextController, super(key: key);

  final TextEditingController _cvvTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),

      child:   TextField(

        keyboardType: TextInputType.number,


        controller: _cvvTextController,



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



          labelText: '123',



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
class widget_trade_name extends StatelessWidget {
  const widget_trade_name({
    Key? key,
    required TextEditingController tradenameTextController,
  })  : _tradenameTextController = tradenameTextController,
        super(key: key);

  final TextEditingController _tradenameTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: _tradenameTextController,
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
            Icons.maps_home_work_outlined,
            color: Color(0xff0E3255),
            size: 18,
          ),
          labelText: 'Business name',
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

