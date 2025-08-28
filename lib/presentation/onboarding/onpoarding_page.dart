import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvvm/presentation/onboarding/class_onboarding.dart';
import 'package:mvvm/presentation/resuorces/assete_manager.dart';
import 'package:mvvm/presentation/resuorces/colors_maneger.dart';
import 'package:mvvm/presentation/resuorces/strings_manager.dart';

class OnpoardingPage extends StatefulWidget {
  const OnpoardingPage({super.key});

  @override
  State<OnpoardingPage> createState() => _OnpoardingPageState();
}

final PageController _pageController = PageController();
int _CurrentIndex = 0;
late final List<Onboardinglist> _List = _getonpoardinglist();
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
    AsseteManager.onpoarding1,
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
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: ColorManager.white,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _List.length,
        onPageChanged: (index) {
          setState(() {
            _CurrentIndex = index;
          });
        },
        itemBuilder: (context, index) {},
      ),
    );
  }
}
