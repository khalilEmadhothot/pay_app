import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_app/routes/routes.dart';
import 'package:pay_app/utils/constants.dart';
import 'package:pay_app/utils/preferences_manager.dart';
import '../../widget/out_boarding_indicator.dart';
import '../../widget/widget_boarding.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: const [
                widget_boarding(
                  ImagePage: 'images/image_page_view_one.png',
                  Title: 'ادفعلي  ',
                  Title2:
                      ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
                ),
                widget_boarding(
                  ImagePage: 'images/image_page_view_tow.png',
                  Title: 'ادفعلي  ',
                  Title2:
                      ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
                ),
                widget_boarding(
                  ImagePage: 'images/image_page_view_three.png',
                  Title: 'ادفعلي  ',
                  Title2:
                      ' استلم قيمة مبيعاتك من زبونك قبل ان تخرج\n            بضاعتك من متجرك او منزلك . ',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutBoardingIndicator(
                marginEnd: 14,
                selected: _currentPage == 0,
              ),
              OutBoardingIndicator(
                marginEnd: 14,
                selected: _currentPage == 1,
              ),
              OutBoardingIndicator(
                marginEnd: 14,
                selected: _currentPage == 2,
              ),
            ],
          ),
          SizedBox(
            height: 65.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 17, end: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                    maintainAnimation: true,
                    maintainSize: true,
                    maintainState: true,
                    child: InkWell(
                      onTap: () {
                        PreferencesManager.saveAppData(key: Const.KEY_BOARDING, value: true)
                            .then((value) => Get.offAndToNamed(Routes.language));
                      },
                      child: Text(
                        'تخطى',
                        style: TextStyle(
                            color: Color(0xff063255),
                            decoration: TextDecoration.underline,
                            fontSize: 20.h,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                InkWell(
                  onTap: () {
                    _pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInCirc);
                  },
                  child: Container(
                    width: 55.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35).r,
                        color: const Color(0xff063255)),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
        ],
      ),
    );
  }
}
