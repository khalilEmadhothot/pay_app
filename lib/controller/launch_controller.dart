import 'package:get/get.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/utils/constants.dart';
import 'package:pay_app/utils/preferences_manager.dart';

class LaunchController extends GetxController{

  bool? boarding = PreferencesManager.getAppData(key: Const.KEY_BOARDING);


  @override
  void onInit() {
    startApp();
    super.onInit();
  }

  //ميثد للفحص اذا  كان مسجل دخول بودي التتطبيق علي الهوم اذا مش عام تسجيل بودي علي
// الوجن اذا ولا عمرو فات التتطبيق بودي علي الواجهات الافتتاحيه
  //طبعا بفحص بناء علي المتغير الي جايبو بفحص الداتا عن طريق الي مخزنه بالشارد بفرنسسس
  Future startApp() {
    if (boarding != null) {
      if(PreferencesManager.getAppData(key: Const.KEY_USER_TOKEN) != null){
        return Future.delayed(
            const Duration(seconds: 5), () => Get.offAndToNamed(Routes.AddProductStore));
      }else{
        return Future.delayed(
            const Duration(seconds: 5), () => Get.offAndToNamed(Routes.login));
      }
    } else {
      return Future.delayed(
          const Duration(seconds: 5), () => Get.offAndToNamed(Routes.boarding));
    }
  }
}