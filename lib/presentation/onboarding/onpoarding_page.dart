import 'package:flutter/material.dart';
import 'package:mvvm/presentation/resuorces/colors_maneger.dart';

class OnpoardingPage extends StatefulWidget {
  const OnpoardingPage({super.key});

  @override
  State<OnpoardingPage> createState() => _OnpoardingPageState();
}

class _OnpoardingPageState extends State<OnpoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.greycolor,
      appBar: AppBar(title: Text('john karam ')),
    );
  }
}
