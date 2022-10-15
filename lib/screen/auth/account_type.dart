import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountType extends StatefulWidget {
  const AccountType({Key? key}) : super(key: key);

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.question_mark,
          color: Colors.white,
        ),
        onPressed: () {},
        backgroundColor: const Color(0xff0E3255),
      ),
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
            height: 112.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Text(
              'Choose the type of account',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.h,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
            child: Container(
              width: 343.w,
              height: 110.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).r,
                color: const Color(0xffEDF7FF),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 26, bottom: 25, start: 5),
                child: ListTile(
                  leading: Image.asset('images/image_account.png'),
                  title: Text(
                    'single account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  minLeadingWidth: 5,
                  subtitle: Text(
                    'For small or home projects',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.h,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
            child: Container(
              width: 343.w,
              height: 110.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).r,
                color: const Color(0xffEDF7FF),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 26, bottom: 25, start: 5),
                child: ListTile(
                  leading: Image.asset('images/image_com.png'),
                  title: Text(
                    'corporate account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    ' a company or an organization',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.h,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
