
import 'package:pay_app/utils/constants.dart';
import 'package:pay_app/utils/preferences_manager.dart';



class AppHelper {


  //ميثد وظيفتها تخزين اللغه واذا اختار عربي هيعرضلو العربي اذا غير هيك هيعرضلو الانجليزي
  static String getAppLanguage() {
    if (PreferencesManager.getAppData(key: Const.KEY_LANGUAGE) != null &&
        PreferencesManager.getAppData(key: Const.KEY_LANGUAGE) != "") {
      String language = PreferencesManager.getAppData(key: Const.KEY_LANGUAGE);
      if (language == Const.KEY_LANGUAGE_AR)
        return Const.KEY_LANGUAGE_AR;
      else if (language == Const.KEY_LANGUAGE_EN) return Const.KEY_LANGUAGE_EN;
    }
    return Const.KEY_LANGUAGE_AR;
  }





}
