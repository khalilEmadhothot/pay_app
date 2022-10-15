import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationAbout extends StatefulWidget {
  const InformationAbout({Key? key}) : super(key: key);

  @override
  State<InformationAbout> createState() => _InformationAboutState();
}

class _InformationAboutState extends State<InformationAbout> {
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
            height: 42.h,
          ),
          const widget_text_settings(
            name: 'About the app',
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،\nلقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد \nمثل هذا النص أو العديد من النصوص الأخرى إضافة \nإلى زيادة عدد الحروف التى يولدها التطبيق.',
              style: TextStyle(
                color: const Color(0xff0E3255),
                fontWeight: FontWeight.w400,
                fontSize: 12.h,
              ),
            ),
          ),
          const widget_text_settings(
            name: 'vision',
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،\nلقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد \nمثل هذا النص أو العديد من النصوص الأخرى إضافة \nإلى زيادة عدد الحروف التى يولدها التطبيق.',
              style: TextStyle(
                color: const Color(0xff0E3255),
                fontWeight: FontWeight.w400,
                fontSize: 12.h,
              ),
            ),
          ),
          const widget_text_settings(
            name: 'mission',
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،\nلقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد \nمثل هذا النص أو العديد من النصوص الأخرى إضافة \nإلى زيادة عدد الحروف التى يولدها التطبيق.',
              style: TextStyle(
                color: const Color(0xff0E3255),
                fontWeight: FontWeight.w400,
                fontSize: 12.h,
              ),
            ),
          ),
          const widget_text_settings(
            name: 'services',
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،\nلقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد \nمثل هذا النص أو العديد من النصوص الأخرى إضافة \nإلى زيادة عدد الحروف التى يولدها التطبيق.',
              style: TextStyle(
                color: const Color(0xff0E3255),
                fontWeight: FontWeight.w400,
                fontSize: 12.h,
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
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
