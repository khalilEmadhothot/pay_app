import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  late TextEditingController _searchTextController;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
  }

  @override
  void dispose() {
    _searchTextController.dispose();

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
          'Messages',
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
              height: 30.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Expanded(
                child: ListView.separated(
                    padding: const EdgeInsetsDirectional.only(top: 0),
                    physics: const BouncingScrollPhysics(),
                    reverse: true,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 16, end: 16),
                        child: Container(
                          width: 343.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                            color: const Color(0xffF5F5FA),
                            borderRadius: BorderRadius.circular(4).r,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 16, top: 3),
                                child: Text(
                                  'New protection system',
                                  style: TextStyle(
                                    color: const Color(0xff0E3255),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.h,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 16, top: 3),
                                child: Container(
                                  alignment: AlignmentDirectional.topEnd,
                                  width: 10.w,
                                  height: 10.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff57CA85),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 16, top: 3),
                                child: Text(
                                  ' 11:16 PM  2022-09-26',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 14.h,
                      );
                    },
                    itemCount: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
