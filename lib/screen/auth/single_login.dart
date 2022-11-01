import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleLogin extends StatefulWidget {
  const SingleLogin({Key? key}) : super(key: key);

  @override
  State<SingleLogin> createState() => _SingleLoginState();
}

class _SingleLoginState extends State<SingleLogin> {
  late TextEditingController _fierstnameTextController;
  late TextEditingController _lestnameTextController;
  late TextEditingController _tradenameTextController;
  late TextEditingController _bankTextController;
  late TextEditingController _ibanTextController;
  late TextEditingController _phoneTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _facebookTextController;
  late TextEditingController _instagramTextController;

  @override
  void initState() {
    super.initState();
    _fierstnameTextController = TextEditingController();
    _lestnameTextController = TextEditingController();
    _tradenameTextController = TextEditingController();
    _bankTextController = TextEditingController();
    _ibanTextController = TextEditingController();
    _phoneTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _facebookTextController = TextEditingController();
    _instagramTextController = TextEditingController();
  }

  @override
  void dispose() {
    _fierstnameTextController.dispose();
    _lestnameTextController.dispose();
    _tradenameTextController.dispose();
    _bankTextController.dispose();
    _ibanTextController.dispose();
    _phoneTextController.dispose();
    _emailTextController.dispose();
    _facebookTextController.dispose();
    _instagramTextController.dispose();
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
          'New_registration'.tr,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 19.h),
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
              size: 20,
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
              height: 32.h,
            ),
            const widget_text_companies(
              name: 'First_Name',
            ),
            SizedBox(
              height: 12.h,
            ),

            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'last_name',
            ),
            SizedBox(
              height: 12.h,
            ),

            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Trade_Name',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_trade_name(
                tradenameTextController: _tradenameTextController),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'bank',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_feaild_bank(bankTextController: _bankTextController),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'i_ban',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_feaild_iban(ibanTextController: _ibanTextController),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'phone',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_feaild_phone(phoneTextController: _phoneTextController),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Email',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_feaild_email(emailTextController: _emailTextController),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'facebook_link',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_feaild_facebook(
                facebookTextController: _facebookTextController),
            SizedBox(
              height: 16.h,
            ),
            const widget_text_companies(
              name: 'Instagram_link',
            ),
            SizedBox(
              height: 12.h,
            ),
            widget_feial_instageam(
                instagramTextController: _instagramTextController),
            SizedBox(height:37.h ,),
            const widget_button(name: 'New_registration',),

          ],
        ),
      ),
    );
  }
}

class widget_button extends StatelessWidget {
  const widget_button({
    Key? key, required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Align(
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
            name.tr,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
            ),
            textAlign: TextAlign.center,
          ),

        ),
      ),
    );
  }
}

class widget_feial_instageam extends StatelessWidget {
  const widget_feial_instageam({
    Key? key,
    required TextEditingController instagramTextController,
  })  : _instagramTextController = instagramTextController,
        super(key: key);

  final TextEditingController _instagramTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
      child: TextField(
        keyboardType: TextInputType.url,
        controller: _instagramTextController,
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
            Icons.keyboard_option_key_rounded,
            color: Color(0xff0E3255),
            size: 18,
          ),
          labelText: 'my choice'.tr,
          labelStyle: TextStyle(
              fontSize: 13.sp,
              fontStyle: FontStyle.italic,
              color: const Color(0xff99ABBD
              ),

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

class widget_feaild_facebook extends StatelessWidget {
  const widget_feaild_facebook({
    Key? key,
    required TextEditingController facebookTextController,
  })  : _facebookTextController = facebookTextController,
        super(key: key);

  final TextEditingController _facebookTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
      child: TextField(
        keyboardType: TextInputType.url,
        controller: _facebookTextController,
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
            Icons.keyboard_option_key_rounded,
            color: Color(0xff0E3255),
            size: 18,
          ),
          labelText: 'my choice'.tr,
          labelStyle: TextStyle(
              fontSize: 13.sp,
              fontStyle: FontStyle.italic,
              color: const Color(0xff99ABBD
              ),

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

class widget_feaild_email extends StatelessWidget {
  const widget_feaild_email({
    Key? key,
    required TextEditingController emailTextController,
  })  : _emailTextController = emailTextController,
        super(key: key);

  final TextEditingController _emailTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        controller: _emailTextController,
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
            Icons.email,
            color: Color(0xff0E3255),
            size: 18,
          ),
          labelText: 'email'.tr,
          labelStyle: TextStyle(
              fontSize: 13.sp,
              fontStyle: FontStyle.italic,
              color: const Color(0xff99ABBD
              ),

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

class widget_feaild_phone extends StatelessWidget {
  const widget_feaild_phone({
    Key? key,
    required TextEditingController phoneTextController,
  })  : _phoneTextController = phoneTextController,
        super(key: key);

  final TextEditingController _phoneTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            fontWeight: FontWeight.w500, fontSize: 16.sp, color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.call,
            color: Color(0xff0E3255),
            size: 18,
          ),
          labelText: 'phone'.tr,
          labelStyle: TextStyle(
              fontSize: 13.sp,
              fontStyle: FontStyle.italic,
              color: const Color(0xff99ABBD
              ),

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

class widget_feaild_iban extends StatelessWidget {
  const widget_feaild_iban({
    Key? key,
    required TextEditingController ibanTextController,
  })  : _ibanTextController = ibanTextController,
        super(key: key);

  final TextEditingController _ibanTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
      child: TextField(
        keyboardType: TextInputType.name,
        controller: _ibanTextController,
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
            Icons.keyboard_alt_outlined,
            color: Color(0xff0E3255),
            size: 18,
          ),
          labelText: 'TWE444444445000000000000000000000000.................',
          labelStyle: TextStyle(
              fontSize: 13.sp,
              fontStyle: FontStyle.italic,
              color: const Color(0xff99ABBD
              ),

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

class widget_feaild_bank extends StatelessWidget {
  const widget_feaild_bank({
    Key? key,
    required TextEditingController bankTextController,
  })  : _bankTextController = bankTextController,
        super(key: key);

  final TextEditingController _bankTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16, start: 16),
      child: TextField(
        keyboardType: TextInputType.name,
        controller: _bankTextController,
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
            Icons.comment_bank_outlined ,
            color: Color(0xff0E3255),
            size: 18,
          ),
          labelText: 'bank'.tr,
          labelStyle: TextStyle(
              fontSize: 13.sp,
              fontStyle: FontStyle.italic,
              color: const Color(0xff99ABBD
              ),

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
        keyboardType: TextInputType.name,
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
            Icons.business_outlined ,
            color: Color(0xff0E3255),
            size: 18,
          ),
          labelText: 'Business name'.tr,
          labelStyle: TextStyle(
              fontSize: 13.sp,
              fontStyle: FontStyle.italic,
              color: const Color(0xff99ABBD
              ),

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

class widget_text_companies extends StatelessWidget {
  const widget_text_companies({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 17),
      child: Text(
        name.tr,
        style: TextStyle(
          color: const Color(0xff0E3255),
          fontWeight: FontWeight.w500,
          fontSize: 14.h,
        ),
      ),
    );
  }
}
