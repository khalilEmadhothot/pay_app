import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.transparent,
        elevation: 0,
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
              color: Colors.black,
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
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 200),
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  'Payment done',
                  style: TextStyle(
                    color:  Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 73.h,),
            Align(
                alignment: AlignmentDirectional.center,
                child: Image.asset('images/image_Payment.png')),
          ],
        ),
      ),
    );
  }
}
