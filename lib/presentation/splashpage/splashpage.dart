import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvm/presentation/resuorces/assete_manager.dart';
import 'package:mvvm/presentation/resuorces/colors_maneger.dart';
import 'package:mvvm/presentation/resuorces/constants_manager.dart';
import 'package:mvvm/presentation/resuorces/routes_manager.dart';
import 'package:mvvm/presentation/resuorces/strings_manager.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(Duration(seconds: ConstantsManager.splashpage), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, RoutesManager.OnBoarding);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(AsseteManager.logo)),
            SizedBox(height: SizBoxManager.sizboxhit10),
            Text(
              StringsManager.textspalshlogo,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
