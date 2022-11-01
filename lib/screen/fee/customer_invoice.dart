import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomerInvoice extends StatefulWidget {
  const CustomerInvoice({Key? key}) : super(key: key);

  @override
  State<CustomerInvoice> createState() => _CustomerInvoiceState();
}

class _CustomerInvoiceState extends State<CustomerInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          'invoice',
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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.white,
            size: 25.h,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 49.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 74.h,
              decoration: BoxDecoration(
                color: const Color(0xffF5F5FA),
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Text(
                      'number phone:',
                      style: TextStyle(
                        color: Color(0xff0E3255),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10),
                    child: Text(
                      '9728113864',
                      style: TextStyle(
                        color: Color(0xffF58A07),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 74.h,
              decoration: BoxDecoration(
                color: Color(0xffF5F5FA),
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Text(
                      'Merchant code:',
                      style: TextStyle(
                        color: Color(0xff0E3255),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10),
                    child: Text(
                      '7854',
                      style: TextStyle(
                        color: Color(0xffF58A07),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 74.h,
              decoration: BoxDecoration(
                color: Color(0xffF5F5FA),
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Text(
                      'The amount required :',
                      style: TextStyle(
                        color: Color(0xff0E3255),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10),
                    child: Text(
                      '7854',
                      style: TextStyle(
                        color: Color(0xffF58A07),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 74.h,
              decoration: BoxDecoration(
                color: Color(0xffF5F5FA),
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Text(
                      'Card Type:',
                      style: TextStyle(
                        color: Color(0xff0E3255),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10),
                    child: Row(
                      children: [
                        Text(
                          ' Master Card',
                          style: TextStyle(
                            color: const Color(0xffF58A07),
                            fontSize: 16.h,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Image.asset('images/image_visa.png')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 343.w,
              height: 74.h,
              decoration: BoxDecoration(
                color: Color(0xffF5F5FA),
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Text(
                      'Notes:',
                      style: TextStyle(
                        color: Color(0xff0E3255),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10),
                    child: Text(
                      'Pay the required amount',
                      style: TextStyle(
                        color: Color(0xffF58A07),
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 48.h,
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
                  'pay bill ',
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
