import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_app/screen/Processes/all_Processes.dart';
import 'package:pay_app/screen/Processes/details_processes.dart';
import 'package:pay_app/screen/auth/Payment.dart';
import 'package:pay_app/screen/auth/account_type.dart';
import 'package:pay_app/screen/auth/card_details.dart';
import 'package:pay_app/screen/auth/client_login.dart';
import 'package:pay_app/screen/auth/companies_login.dart';
import 'package:pay_app/screen/auth/login.dart';
import 'package:pay_app/screen/auth/single_login.dart';
import 'package:pay_app/screen/balance/balance_%D9%8Dscreen.dart';
import 'package:pay_app/screen/card/card_screen.dart';
import 'package:pay_app/screen/fee/fee_screen.dart';
import 'package:pay_app/screen/messages/messages_screen.dart';
import 'package:pay_app/screen/page_view_screen/chose_language.dart';
import 'package:pay_app/screen/page_view_screen/launch.dart';
import 'package:pay_app/screen/page_view_screen/out_boarding_screen.dart';
import 'package:pay_app/screen/raffles/all_raffles.dart';
import 'package:pay_app/screen/raffles/details_raffles.dart';
import 'package:pay_app/screen/raffles/withdrawal_request.dart';
import 'package:pay_app/screen/settings/connect.dart';
import 'package:pay_app/screen/settings/edit_profile.dart';
import 'package:pay_app/screen/settings/information_about.dart';
import 'package:pay_app/screen/settings/profile.dart';
import 'package:pay_app/screen/settings/screen_settings.dart';
import 'package:pay_app/screen/store/create_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/FeeScreen',
            localizationsDelegates: const [
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('ar'),
              Locale('en'),
            ],
            locale: const Locale('en'),
            routes: {
              '/Launch': (context) => const Launch(),
              '/OutBoardingScreen': (context) => const OutBoardingScreen(),
              '/ChoseLanguage': (context) => const ChoseLanguage(),
              '/Login': (context) => const Login(),
              '/AccountType': (context) => const AccountType(),
              '/CompaniesLogin': (context) => const CompaniesLogin(),
              '/SingleLogin': (context) => const SingleLogin(),
              '/ClientLogin': (context) => const ClientLogin(),
              '/CardDetails': (context) => const CardDetails(),
              '/Payment': (context) => const Payment(),
              //المتجر
              '/CreateStore': (context) => const CreateStore(),
              //الرصيد
              '/BalanceScreen': (context) => const BalanceScreen(),
              //
              // العمليات
              '/AllProcesses': (context) => const AllProcesses(),
              '/DetailsProcesses': (context) => const DetailsProcesses(),
              //السحوبات
              '/AllRaffles': (context) => const AllRaffles(),
              '/DetailsRaffles': (context) => const DetailsRaffles(),
              '/WithdrawalRequest': (context) => const WithdrawalRequest(),
              //الرسائل
              '/MessagesScreen': (context) => const MessagesScreen(),
              //الاعدادات
              '/SettingsScreen': (context) => const SettingsScreen(),
              '/Connect': (context) => const Connect(),
              '/EditProfile': (context) => const EditProfile(),
              '/InformationAbout': (context) => const InformationAbout(),
              '/Profial': (context) => const Profial(),
              //card
              '/CardScreen': (context) => const CardScreen(),
              //Fee
              '/FeeScreen': (context) => const FeeScreen(),
            },
          );
        });
  }
}
