import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pay_app/controller/settings_controller.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/screen/page_view_screen/chose_language.dart';
import 'package:pay_app/utils/local.dart';
import 'package:pay_app/utils/preferences_manager.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

Future initServices() async {
  await Get.putAsync(() => PreferencesManager().initial());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SettingsController _controller = Get.put(SettingsController());

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.login,
            translations: MyTranslations(),
            locale: _controller.getAppLocale(),
            getPages: AppRoutes.routesPages,
          );
        });
  }
}
