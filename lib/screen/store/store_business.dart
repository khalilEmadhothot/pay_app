import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class StoreBusiness extends StatefulWidget {
  const StoreBusiness({Key? key}) : super(key: key);

  @override
  State<StoreBusiness> createState() => _StoreBusinessState();
}

class _StoreBusinessState extends State<StoreBusiness> {
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
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200.h,
                color: Colors.black87,
                child: Image.asset(
                  'images/image_store.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 180, start: 16, end: 16),
                child: Row(
                  children: [
                    Image.asset(
                      'images/image_store_circule.png',
                      width: 70,
                      height: 70,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 20),
                      child: Text(
                        'Store Khalil',
                        style: TextStyle(
                            color: const Color(0xff0E3255),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.h),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
            child: Text(
              'Store Khalil Store Khalil Store Khalil Store Khalil Store Khalil\nStore Khalil Store KhalilStore Khalil Store Khalil Store  Store\n Store Khalil Store Khalil Store Khalil Store Khalil Store Khalil',
              style: TextStyle(
                  color: const Color(0xff0E3255),
                  height: 1.5.h,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.h),
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 40,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 13,
                mainAxisSpacing: 13,
                childAspectRatio: 120 / 140,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  color: Colors.white,
                  child: SizedBox(
                      width: 160.w,
                      height: 100.h,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8).r,
                        ),
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              width: double.infinity,
                              height: 130.h,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                              ),
                              child: Image.asset(
                                'images/image_store_k.png',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  top: 10, start: 8),
                              child: Text(
                                'Autumn blouse',
                                style: TextStyle(
                                    color: const Color(0xff0E3255),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.h),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  top: 7, start: 9),
                              child: Text(
                                'KWD45.34',
                                style: TextStyle(
                                    color: const Color(0xffF58A07),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.h),
                              ),
                            ),
                          ],
                        ),
                      )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
