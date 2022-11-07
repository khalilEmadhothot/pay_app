import 'package:get/get.dart';

class MyTranslations implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {
          // TODO Boarding
          'My_wallet': ' محفظتى',
          'boarding_title':
              ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج بضاعتك من متجرك او منزلك',
          'Skip': ' تخطى',

          // TODO Auth
          'Merchant': 'التاجر ',
          'Client': 'العميل',
          'Englishh': 'الانجليزيه',
          'Arrabicc': 'العربيه',
          'sign_in': 'تسجيل الدخول',
          'Merchant_code': 'كود التاجر ',
          'password': 'كلمة السر ',
          'New_registration': 'تسجيل جديد',
          'Transformation': 'تحويل',
          'usually_password': 'إعادة تعين كلمة المرور؟',
          'account_type': 'نوع الحساب',
          'Choose_the_type_of_account': 'اختيار نوع الحساب',
          'single_account': 'حساب فردي',
          'For_small_or_home_projects': 'للمشاريع الصغيرة أو المنزلية',
          'corporate_account': 'حساب شركات',
          'company_or_an_organization': 'في حال لديك ترخيص تجاري شركة أو مؤسسة',
          'First_Name': 'الاسم الأول',
          'last_name': 'الاسم الأخير',
          'Trade_Name': 'الاسم التجاري',
          'Business_name': 'اسم النشاط التجاري',
          'bank': 'البنك',
          'i_ban': 'آي بان',
          'phone': 'الهاتف',
          'Email': 'البريد الإلكتروني',
          'facebook_link': 'رابط الفيس بوك',
          'Optional': 'اختياري',
          'my_choice': 'اختياري',
          'Instagram_link': 'رابط الانستغرام',
          'Commercial_License_No.': 'رقم الترخيص التجاري',
          'Transformation': 'تحويل ',
          'amount': 'المبلغ ',
          'Buyer_No.': 'رقم المشتري ',
          'Card_selection': 'اختيار البطاقة',
          'card': 'البطاقة',
          'name': 'الاسم ',
          'card_number': 'رقم البطاقة',
          'Expiration_date': 'تاريخ انتهاء الصلاحية',
          'CVV': 'CVV',
          'Payment_done': 'تمت عملية الدفع',

          // TODO Home
          'home': 'الرئيسية',
          'last_recording': 'أخر تسجيل:',
          'account_number': 'رقم الحساب:',
          'Processes': 'العمليات',
          'raffles': 'السحوبات',
          'Withdrawal_request': 'طلب سحب',
          'Balance': 'الرصيد',
          'Messages': 'الرسائل',
          'card_': 'البطاقة ',
          'Fee': 'الرسوم ',
          'gallery': 'معرضك ',
          'Payment_link': 'رابط الدفع',

          // TODO Payment link
          'Payment_link_': 'رابط الدفع',
          'Copy': 'نسخ',
          'Create_an_invoice': 'إنشاء فاتورة ',
          'Customer_phone_number': 'رقم هاتف العميل ',
          'Card_selection_': 'اختيار البطاقة ',
          'Notes': 'ملاحظات ',

          // TODO Balance
          'balance': 'رصيدك',
          'Your actual balance': 'رصيدك الفعلي:',
          'Amounts_required_for_withdrawal': 'المبالغ المطلوبة للسحب:',
          'Your_current_balance': 'رصيدك الحالي:',

          // TODO Processes
          'operations': 'عملياتك',
          'Search': 'بحث ',
          'Success': 'نجاح',
          'failed': 'فشل ',
          'Your_transaction_details': 'تفاصيل عمليتك ',
          'Customer_phone_': 'هاتف العميل',
          'Operation_date': 'تاريخ العملية',
          'commission': 'العمولة ',
          'condition': 'الحالة  ',
          'Invoice_printing': 'طباعة الفاتورة',

          // TODO Withdrawal request
          'withdrawals': 'سحوباتك',
          'Converted': 'تم التحويل ',
          'Withdrawal_details': 'تفاصيل عملية السحب ',
          'date_application': 'تاريخ الطلب ',
          'Withdrawal_request_': 'طلب سحب ',
          'Your_actual_balance:': 'رصيدك الفعلي:',

          // TODO Messages
          'New_protection_system': 'نظام الحماية الجديد ',

          // TODO Settings
          'settings': 'الإعدادات',
          'name_': 'خليل عماد هتهت',
          'Profile_personly': 'الملف الشخصي',
          'Share_app': 'شارك التطبيق',
          'Connect_with_us': 'تواصل معنا',

          'information_about_us': 'معلومات عنا',
          'privacy_policy': 'سياسة الخصوصية ',
          'language': 'اللغة',
          'Commission_settings': 'إعدادات العمولة',
          'Logout': 'تسجيل خروج',
          'About_the_app': 'عن التطبيق',
          'problem_title': 'عنوان المشكلة',
          'Explanation_of_the_problem': 'وصف توضيحي للمشكلة',
          'send': 'إرسال',
          'privacy_policy_': 'سياسة الخصوصية',
          'Select_Language': 'اختيار اللغة',
          'Arabic': 'العربية',
          'English': 'الإنجليزية',
          'Edit_profile': 'تعديل الملف الشخصي',
          'emphasis': 'تأكيد',
          'Commercial_License_Number': 'رقم الترخيص التجاري:',
          'Commercial_License_Number_': 'رقم الترخيص التجاري:',
          'Civil_ID_Authentication': 'توثيق البطاقة المدنية',
          'Add_civil_ID': 'إضافةالبطاقة المدنية',
          'Bank_card_authentication': 'توثيق بطاقة البنك ',
          'Add_bank_card': 'إضافة بطاقة البنك  ',

          // TODO Fee
          'Fee_': 'الرسوم',
          'Commission_settings_': 'إعدادات العمولة',
          'customer_fee': 'رسوم العميل',
          'merchant_pays': 'يقوم التاجر بالدفع',
          'customer_pays': 'يقوم العميل بالدفع',
          'Merchant_fee': 'رسوم التاجر',
          'commission_from': 'العمولة من',
          'Merchant_': 'التاجر ',
          'Client_': 'العميل  ',
          'between_merchant_and_customer': ' بين التاجر والعميل',

          // TODO shop
          'your_store': 'متجرك ',
          'Hope_Store': 'متجر  الأمل',
          'Autumn_blouse': 'بلوزة خريفي',
          'size': 'الحجم ',
          'share': 'شارك ',
          'Create_your_online_store': 'انشىء  متجرك الإلكتروني ',
          'Store_name': 'اسم المتجر',
          'description': 'وصف',
          'Add_cover_photo': ' أضف صورة الغلاف ',
          'Your_store_is_created': 'تمت إنشاء متجرك ',
          'product_name': 'اسم المنتج',
          'Product_Description': 'وصف المنتج',
          'Product_price': 'سعر المنتج ',
          'available': 'متوفر ',
          'not_available': 'غير متوفر ',
          'Add_photos_of_your_product': 'أضف صور للمنتج الخاص بك ',
          'add_product': 'أضف المنتج',
        },
        "en": {
          // TODO Boarding
          'My_wallet': ' My wallet',
          'boarding_title':
              'Receive the value of your sales from your customer before leaving your goods from your store or home',
          'Skip': ' Skip',

          // TODO Auth
          'Merchant': 'Merchant ',
          'Client': 'Client',
          'sign_in': 'Sign in',
          'Merchant_code': 'Merchant code',
          'password': 'Password',
          'New_registration': 'New registration',
          'usually_password': 'Password reset?',
          'account_type': 'Account type',
          'Choose_the_type_of_account': 'Choose the type of account',
          'single account': 'Single account',
          'For_small_or_home_projects': 'For small or home projects',
          'corporate account': 'Corporate Account',
          'company_or_an_organization': 'Company or an organization',
          'First_Name': 'First name',
          'last_name': 'Last name',
          'Trade_Name': 'Trade name',
          'Business_name': 'Business name',
          'bank': 'Bank',
          'i ban': 'I ban',
          'phone': 'Phone',
          'Email': 'Email',
          'facebook_link': 'Facebook link',
          'Optional': 'Optional',
          'Instagram link': 'Instagram link',
          'Commercial_License_No.': 'Commercial License No',
          'Transformation': 'Transformation ',
          'amount': 'Amount ',
          'Buyer No.': 'Buyer No',
          'Card_selection': 'Card selection',
          'card': 'Card',
          'name': 'Name ',
          'card_number': 'Card number',
          'Expiration_date': 'Expiration date',
          'CVV': 'CVV',
          'Payment_done': 'Payment done',

          // TODO Home
          'home': 'Home',
          'last_recording': 'Last recording:',
          'account_number': 'Account number:',
          'Processes': 'Processes',
          'raffles': 'Raffles',
          'Withdrawal_request': 'Withdrawal request',
          'Balance': 'Balance',
          'Messages': 'Messages',
          'card_': 'Card ',
          'Fee': 'Fee ',
          'gallery': 'Gallery ',
          'Payment_link': 'Payment link',

          // TODO Payment link
          'Payment_link_': 'Payment link_',
          'Copy': 'Copy',
          'Create_an_invoice': 'Create an invoice',
          'Customer_phone_number': 'Customer phone number',
          'Card_selection_': 'Card selection ',
          'Notes': 'Notes ',

          // TODO Balance
          'balance': 'Balance',
          'Your actual balance': 'Your actual balance:',
          'Amounts_required_for_withdrawal': ':Amounts required for withdrawal',
          'Your_current_balance': 'Your current balance:',

          // TODO Processes
          'operations': 'operations',
          'Search': 'Search ',
          'Success': 'Success',
          'failed': 'failed ',
          'Customer_phone_': 'Customer_phone_',
          'Operation_date': 'Operation_date',
          'commission': 'commission ',
          'condition': 'condition ',
          'Invoice_printing': 'Invoice_printing',

          // TODO Messages
          'New_protection_system': 'New protection system',

          // TODO Settings
          'settings': 'settings',
          'name_': 'khalil hothot ',
          'Profile_personly': 'Profile personly',
          'Share_app': 'Share app',
          'Connect_with_us': 'Connect with us',
          'information_about_us': 'Information about us',
          'privacy_policy': 'Privacy policy ',
          'language': 'Language',
          'Commission_settings': 'Commission settings',
          'Log_out': 'Log out',
          'About_the_app': 'About the app',
          'problem_title': 'Problem title',
          'Explanation_of_the_problem': 'Explanation of the problem',
          'send': 'Send',
          'privacy_policy_': 'Privacy policy ',
          'Select_Language': 'Select Language',
          'Arabic': 'Arabic',
          'English': 'English',
          'Edit_profile': 'Edit profile',
          'emphasis': 'Emphasis',
          'Commercial_License_Number': 'Commercial License Number:',
          'Civil_ID_Authentication': 'Civil ID Authentication',
          'Add_civil_ID': 'Add civil ID',
          'Bank_card_authentication': 'Bank card authentication ',
          'Add_bank_card': 'Add bank card ',

          // TODO Fee
          'Fee_': 'Fee',
          'Commission_settings_': 'Commission settings',
          'customer_fee': 'customer fee',
          'merchant_pays': 'merchant pays',
          'customer_pays': 'customer pays',
          'Merchant_fee': 'Merchant fee',
          'commission_from': 'commission from',
          'Merchant_': 'Merchant ',
          'Client_': 'Client  ',
          'between_merchant_and_customer': ' between merchant and customer',

          // TODO shop
          'your_store': 'your store ',
          'Hope_Store': 'Hope Store',
          'Autumn_blouse': 'Autumn blouse',
          'size': 'Size ',
          'share': 'Share ',
          'Create_your_online_store': 'Create your online store',
          'Store_name': 'Store name',
          'description': 'Description',
          'Add_cover_photo': 'Add cover photo',
          'Your_store_is_created': 'Your store is created',
          'product_name': 'Product name',
          'Product_Description': 'Product Description',
          'Product_price': 'Product price',
          'available': 'Available ',
          'not_available': 'Not available',
          'Add_photos_of_your_product': 'Add photos of your product ',
          'add_product': 'Add product',
        },
      };
}
