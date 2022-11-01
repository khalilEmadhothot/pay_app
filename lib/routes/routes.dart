import 'package:get/get.dart';
import 'package:pay_app/screen/Processes/all_Processes.dart';
import 'package:pay_app/screen/Processes/details_processes.dart';
import 'package:pay_app/screen/auth/Payment.dart';
import 'package:pay_app/screen/auth/account_type.dart';
import 'package:pay_app/screen/auth/card_details.dart';
import 'package:pay_app/screen/auth/client_login.dart';
import 'package:pay_app/screen/auth/companies_login.dart';
import 'package:pay_app/screen/auth/login_screen.dart';
import 'package:pay_app/screen/auth/single_login.dart';
import 'package:pay_app/screen/balance/balance_%D9%8Dscreen.dart';
import 'package:pay_app/screen/card/card_screen.dart';
import 'package:pay_app/screen/fee/customer_invoice.dart';
import 'package:pay_app/screen/fee/fee_screen.dart';
import 'package:pay_app/screen/messages/messages_screen.dart';
import 'package:pay_app/screen/language_screen.dart';
import 'package:pay_app/screen/launch_screen.dart';
import 'package:pay_app/screen/boarding_screen.dart';
import 'package:pay_app/screen/raffles/all_raffles.dart';
import 'package:pay_app/screen/raffles/details_raffles.dart';
import 'package:pay_app/screen/raffles/withdrawal_request.dart';
import 'package:pay_app/screen/settings/connect.dart';
import 'package:pay_app/screen/settings/edit_profile.dart';
import 'package:pay_app/screen/settings/information_about.dart';
import 'package:pay_app/screen/settings/profile.dart';
import 'package:pay_app/screen/settings/screen_settings.dart';
import 'package:pay_app/screen/store/add_product_store.dart';
import 'package:pay_app/screen/store/create_store.dart';
import 'package:pay_app/screen/store/merchant_business.dart';
import 'package:pay_app/screen/store/store_business.dart';
import 'package:pay_app/screen/store/store_success.dart';
import 'package:pay_app/screen/store/view_products.dart';

import '../bindings/login_bindings.dart';

class AppRoutes {
  static final routesPages = [
    GetPage(name: Routes.Launch, page: () => LaunchScreen()),
    GetPage(name: Routes.boarding, page: () => BoardingScreen()),
    GetPage(name: Routes.language, page: () => const LanguageScreen()),
    GetPage(
        name: Routes.login, page: () => LoginScreen(), binding: LoginBinging()),
    GetPage(name: Routes.AccountType, page: () => const AccountType()),
    GetPage(name: Routes.CompaniesLogin, page: () => const CompaniesLogin()),
    GetPage(name: Routes.SingleLogin, page: () => const SingleLogin()),
    GetPage(name: Routes.ClientLogin, page: () => const ClientLogin()),
    GetPage(name: Routes.CardDetails, page: () => const CardDetails()),
    GetPage(name: Routes.Payment, page: () => const Payment()),
    //   //المتجر
    GetPage(name: Routes.AddProductStore, page: () => const AddProductStore()),
    GetPage(name: Routes.CreateStore, page: () => const CreateStore()),
    GetPage(name: Routes.StoreSuccess, page: () => const StoreSuccess()),
    GetPage(name: Routes.StoreBusiness, page: () => const StoreBusiness()),
    GetPage(name: Routes.ViewProduct, page: () => const ViewProduct()),
    GetPage(
        name: Routes.MerchantBusiness, page: () => const MerchantBusiness()),
    //   //الرصيد
    GetPage(name: Routes.BalanceScreen, page: () => const BalanceScreen()),
    //   // العمليات
    GetPage(name: Routes.AllProcesses, page: () => const AllProcesses()),
    GetPage(
        name: Routes.DetailsProcesses, page: () => const DetailsProcesses()),
    //   //السحوبات
    GetPage(name: Routes.AllRaffles, page: () => const AllRaffles()),
    GetPage(name: Routes.DetailsRaffles, page: () => const DetailsRaffles()),
    GetPage(
        name: Routes.WithdrawalRequest, page: () => const WithdrawalRequest()),
    //   //الرسائل
    GetPage(name: Routes.MessagesScreen, page: () => const MessagesScreen()),
    //   //الاعدادات
    GetPage(name: Routes.SettingsScreen, page: () => const SettingsScreen()),
    GetPage(name: Routes.Connect, page: () => const Connect()),
    GetPage(name: Routes.EditProfile, page: () => const EditProfile()),
    GetPage(
        name: Routes.InformationAbout, page: () => const InformationAbout()),
    GetPage(name: Routes.Profial, page: () => const Profial()),
    GetPage(name: Routes.CardScreen, page: () => const CardScreen()),
    //Fee
    GetPage(name: Routes.FeeScreen, page: () => const FeeScreen()),
    GetPage(name: Routes.CustomerInvoice, page: () => const CustomerInvoice()),
  ];
}

class Routes {
  static const Launch = '/Launch';
  static const boarding = '/boarding';
  static const language = '/language';
  static const login = '/login';
  static const AccountType = '/AccountType';
  static const CompaniesLogin = '/CompaniesLogin';
  static const SingleLogin = '/SingleLogin';
  static const ClientLogin = '/ClientLogin';
  static const CardDetails = '/CardDetails';
  static const Payment = '/Payment';
  static const AddProductStore = '/AddProductStore';
  static const CreateStore = '/CreateStore';
  static const StoreSuccess = '/StoreSuccess';
  static const StoreBusiness = '/StoreBusiness';
  static const ViewProduct = '/ViewProduct';
  static const MerchantBusiness = '/MerchantBusiness';
  static const BalanceScreen = '/BalanceScreen';
  static const AllProcesses = '/AllProcesses';
  static const DetailsProcesses = '/DetailsProcesses';
  static const AllRaffles = '/AllRaffles';
  static const DetailsRaffles = '/DetailsRaffles';
  static const WithdrawalRequest = '/WithdrawalRequest';
  static const MessagesScreen = '/MessagesScreen';
  static const SettingsScreen = '/SettingsScreen';
  static const Connect = '/Connect';
  static const EditProfile = '/EditProfile';
  static const InformationAbout = '/InformationAbout';
  static const Profial = '/Profial';
  static const CardScreen = '/CardScreen';
  static const FeeScreen = '/FeeScreen';
  static const CustomerInvoice = '/CustomerInvoice';
}
