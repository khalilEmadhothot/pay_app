import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_app/widget/widget_faild_companies.dart';

class Connect extends StatefulWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  late TextEditingController _problemtitletextcontroller;
  late TextEditingController _explanationtextcontroller;

  @override
  void initState() {
    super.initState();
    _problemtitletextcontroller = TextEditingController();
    _explanationtextcontroller = TextEditingController();
  }

  @override
  void dispose() {
    _problemtitletextcontroller.dispose();
    _explanationtextcontroller.dispose();
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
          'Information About',
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
            height: 56.h,
          ),
          const widget_text_settings(
            name: 'problem title',
          ),
          SizedBox(
            height: 12.h,
          ),
          WidgetTextFaildCompanies(
              fierstnameTextController: _problemtitletextcontroller,
              text: 'Enter the title of the problem'),
          SizedBox(
            height: 30.h,
          ),
          const widget_text_settings(
            name: 'Explanation of the problem',
          ),
          WidgetTextFaildCompanies(
              fierstnameTextController: _explanationtextcontroller,
              text: 'Enter a description of the problem'),
          SizedBox(
            height: 121.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 33, start: 33),
              child: ElevatedButton(
                onPressed: () async {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8).r,
                  ),
                  minimumSize: Size(307.w, 48.h),
                  primary: const Color(0xffF58A07),
                ),
                child: Text(
                  'send',
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
    );
  }
}

class widget_text_settings extends StatelessWidget {
  const widget_text_settings({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16),
      child: Text(
        name,
        style: TextStyle(
          color: const Color(0xff0E3255),
          fontWeight: FontWeight.w700,
          fontSize: 16.h,
        ),
      ),
    );
  }
}
