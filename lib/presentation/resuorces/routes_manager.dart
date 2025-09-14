import 'package:flutter/material.dart';
import 'package:mvvm/presentation/ditelspage/ditelspage.dart';
import 'package:mvvm/presentation/forgotpasspage/forgotpasspage.dart';
import 'package:mvvm/presentation/loginpage/loginpage.dart';
import 'package:mvvm/presentation/mainpage/mainpage.dart';
import 'package:mvvm/presentation/onboarding/onpoarding_page.dart';
import 'package:mvvm/presentation/resuorces/strings_manager.dart';
import 'package:mvvm/presentation/signinhpage/signinhpage.dart';
import 'package:mvvm/presentation/splashpage/splashpage.dart';

class RoutesManager {
  static const String splashpage = "/splashpage";
  static const String OnBoarding = "/OnBoarding";
  static const String loginpage = "/Loginpage";
  static const String signinhpage = "/";
  static const String forgotpasspage = "/";
  static const String mainpage = "/";
  static const String ditelspage = "/";
  //static const String splashpage = "/";
}

class RouteGenerator {
  static Route<dynamic> getroute(RouteSettings setting) {
    switch (setting.name) {
      case RoutesManager.splashpage:
        return MaterialPageRoute(builder: (_) => Splashpage());
      case RoutesManager.loginpage:
        return MaterialPageRoute(builder: (_) => Loginpage());
      case RoutesManager.OnBoarding:
        return MaterialPageRoute(builder: (_) => OnpoardingPage());
      case RoutesManager.signinhpage:
        return MaterialPageRoute(builder: (_) => Signinhpage());
      case RoutesManager.mainpage:
        return MaterialPageRoute(builder: (_) => Mainpage());
      case RoutesManager.forgotpasspage:
        return MaterialPageRoute(builder: (_) => Forgotpasspage());
      case RoutesManager.ditelspage:
        return MaterialPageRoute(builder: (_) => Ditelspage());
      default:
        return UndifinRoutes();
    }
  }

  static Route<dynamic> UndifinRoutes() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text(StringsManager.Unfoundpage)),
        body: Center(child: Text(StringsManager.Unfoundpage)),
      ),
    );
  }
}
