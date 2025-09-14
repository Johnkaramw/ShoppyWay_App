import 'package:flutter/material.dart';
import 'package:mvvm/presentation/onboarding/class_onboarding.dart';
import 'package:mvvm/presentation/resuorces/constants_manager.dart';
import 'package:mvvm/presentation/resuorces/value_margen.dart';

class OnpoardingHome extends StatelessWidget {
  final Onboardinglist _onboardinglist;
  const OnpoardingHome(this._onboardinglist, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: SizBoxManager.sizboxhit20),
        Padding(
          padding: const EdgeInsets.all(SizManager.s15),
          child: Text(
            _onboardinglist.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: SizBoxManager.sizboxhit15),
        Padding(
          padding: const EdgeInsets.all(SizManager.s13),
          child: Text(
            _onboardinglist.suptitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        SizedBox(height: SizBoxManager.sizboxhit20),
        Image(
          image: AssetImage(_onboardinglist.image),
          height: Height.height250,
          width: Width.width250,
        ),
      ],
    );
  }
}
