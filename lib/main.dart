import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pay_app/bindings/app_bindings.dart';
import 'package:pay_app/controller/settings_controller.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/utils/constants.dart';
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

    final SettingsController controller = Get.put(SettingsController());
    PreferencesManager.clearData(key: Const.KEY_BOARDING);
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialBinding: AppBindings(),
            initialRoute: Routes.Launch,
            translations: MyTranslations(),
            locale: controller.getAppLocale(),
            getPages: AppRoutes.routesPages,
          );
        });
  }
}
