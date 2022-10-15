import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _codeTextController;
  late TextEditingController _passwordTextController;
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    _codeTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _codeTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
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
        children: [
          SizedBox(
            height: 69.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Text(
              'push me',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22.h,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 42.h,
          ),
          Container(
            width: 307.w,
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16).r,
              color: const Color(0xffEDF7FF),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 42.h,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 17),
                  child: Text(
                    'Merchant code',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.h,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 15, start: 15),
                  child: TextField(
                    controller: _codeTextController,
                    keyboardType: TextInputType.number,
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
                        labelText: 'Merchant code ',
                        labelStyle: TextStyle(
                            fontSize: 16.sp,
                            fontStyle: FontStyle.italic,
                            color: const Color(0xff0E3255),
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
                          minWidth: 48.w,
                        )),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 17),
                  child: Text(
                    'password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.h,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 15, start: 15),
                  child: TextField(
                    controller: _passwordTextController,
                    obscureText: _isObscure,
                    obscuringCharacter: '*',
                    onSubmitted: (String value) async {},
                    keyboardType: TextInputType.visiblePassword,
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
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xff0E3255),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        labelText: '******',
                        labelStyle: TextStyle(
                            fontSize: 16.sp,
                            fontStyle: FontStyle.italic,
                            color: const Color(0xff0E3255),
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
                          minWidth: 48.w,
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 46.h,
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
                  primary: const Color(0xff0E3255),
                ),
                child: Text(
           'تسجيل الدخول ',
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
          SizedBox(
            height: 12.h,
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
                  'تسجيل جديد  ',
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
          SizedBox(
            height: 0.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: TextButton(onPressed:(){}, child: Text('إعادة تعين كلمة المرور؟',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14.h
            ),)),
          ),
        ],
      ),
    );
  }
}