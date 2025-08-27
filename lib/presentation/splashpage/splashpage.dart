import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvm/presentation/resuorces/assete_manager.dart';
import 'package:mvvm/presentation/resuorces/colors_maneger.dart';
import 'package:mvvm/presentation/resuorces/routes_manager.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNext);
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
      body: Center(child: Image(image: AssetImage(AsseteManager.logo))),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
