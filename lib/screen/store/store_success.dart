import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
class StoreSuccess extends StatefulWidget {
  const StoreSuccess({Key? key}) : super(key: key);

  @override
  State<StoreSuccess> createState() => _StoreSuccessState();
}

class _StoreSuccessState extends State<StoreSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.center,
            child: Text('Your store is created',style: TextStyle(
                color: const Color(0xff0E3255),
                fontWeight: FontWeight.w600,
                fontSize: 18.h
            ),),
          ),
          SizedBox(height: 65.h,),
          Image.asset('images/',fit: BoxFit.contain,)

        ],
      ),
    );
  }
}
