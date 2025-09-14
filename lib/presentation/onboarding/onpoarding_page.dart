import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvvm/presentation/onboarding/BottomCheet.dart';
import 'package:mvvm/presentation/onboarding/class_onboarding.dart';
import 'package:mvvm/presentation/onboarding/onpoarding_home.dart';
import 'package:mvvm/presentation/resuorces/assete_manager.dart';
import 'package:mvvm/presentation/resuorces/colors_maneger.dart';
import 'package:mvvm/presentation/resuorces/routes_manager.dart';
import 'package:mvvm/presentation/resuorces/strings_manager.dart';
import 'package:mvvm/presentation/resuorces/value_margen.dart';

class OnpoardingPage extends StatefulWidget {
  const OnpoardingPage({super.key});

  @override
  State<OnpoardingPage> createState() => _OnpoardingPageState();
}

final PageController pageController = PageController();
int currentIndex = 0;
final List<Onboardinglist> list = _getonpoardinglist();
List<Onboardinglist> _getonpoardinglist() => [
  Onboardinglist(
    AsseteManager.onpoarding1,
    StringsManager.onpoardingsuptitle1,
    StringsManager.onpoardingtitle1,
  ),
  Onboardinglist(
    AsseteManager.onpoarding2,
    StringsManager.onpoardingsuptitle2,
    StringsManager.onpoardingsuptitle3,
  ),
  Onboardinglist(
    AsseteManager.onpoarding3,
    StringsManager.onpoardingsuptitle2,
    StringsManager.onpoardingtitle3,
  ),
];

class _OnpoardingPageState extends State<OnpoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        elevation: SizManager.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: ColorManager.white,
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: list.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnpoardingHome(list[index]);
        },
      ),
      bottomSheet: Container(
        color: ColorManager.primary,
        height: SizManager.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RoutesManager.loginpage,
                  );
                },
                child: Text(
                  StringsManager.skip,
                  style: TextStyle(
                    color: ColorManager.lightGrey,
                    fontSize: SizManager.s22,
                  ),
                  //  textAlign: TextAlign.end,
                ),
              ),
            ),
            getBottomCheetarro(),
          ],
        ),
      ),
    );
  }
}
