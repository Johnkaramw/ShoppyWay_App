import 'package:flutter/material.dart';
import 'package:mvvm/presentation/onboarding/onpoarding_page.dart';
import 'package:mvvm/presentation/resuorces/constants_manager.dart';
import 'package:mvvm/presentation/resuorces/value_margen.dart';

Widget getBottomCheetarro() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(SizManager.s20),
        child: GestureDetector(
          child: SizedBox(
            height: SizManager.s12,
            width: SizManager.s12,
            child: Icon(Icons.arrow_back),
          ),
          onTap: () {
            pageController.animateToPage(
              _PackIndex(),
              duration: Duration(milliseconds: ConstantsManager.time),
              curve: Curves.bounceIn,
            );
          },
        ),
      ),

      Row(
        children: [
          for (int i = 0; i < list.length; i++)
            Padding(
              padding: EdgeInsets.all(SizManager.s14),
              child: _getsircelonparding(i),
            ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(SizManager.s20),
        child: GestureDetector(
          child: SizedBox(
            height: SizManager.s12,
            width: SizManager.s12,
            child: Icon(Icons.arrow_forward_rounded),
          ),
          onTap: () {
            pageController.animateToPage(
              _NextIndex(),
              duration: Duration(milliseconds: ConstantsManager.time),
              curve: Curves.bounceIn,
            );
          },
        ),
      ),
    ],
  );
}

int _PackIndex() {
  int getindex = --currentIndex;
  if (getindex == -1) {
    getindex = list.length;
  }
  return getindex;
}

int _NextIndex() {
  int getindex = ++currentIndex;
  if (getindex == list.length) {
    getindex = 0;
  }
  return getindex;
}

Widget _getsircelonparding(int indix) {
  if (indix == currentIndex) {
    return Icon(Icons.circle_rounded);
  } else {
    return Icon(Icons.circle_outlined);
  }
}
