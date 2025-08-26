import 'package:flutter/material.dart';
import 'package:mvvm/presentation/colors_maneger.dart';
import 'package:mvvm/presentation/fonts_manegar.dart';
import 'package:mvvm/presentation/styles_manager.dart';

ThemeData GetThemApp() {
  return ThemeData(
    // main color them
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.withtPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    splashColor: ColorManager.withtPrimary,
    // cardview them
    cardTheme: CardThemeData(
      color: ColorManager.white,
      shadowColor: ColorManager.grey1,
      elevation: FontSiz.s7,
    ),
    // appbarr them
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: FontSiz.s7,
      shadowColor: ColorManager.lightGrey,
      titleTextStyle: GetRegular(
        fontsiz: FontSiz.s12,
        color: ColorManager.white,
      ),
    ),
    // bottun them
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightGrey,
      disabledColor: ColorManager.grey1,
    ),
    // elevatedtbputton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: GetRegular(color: ColorManager.white, fontsiz: FontSiz.s17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FontSiz.s12),
        ),
      ),
    ),
    // input them = textfield

    // text them
    textTheme: TextTheme(
      headlineSmall: GetSemiBold(
        color: ColorManager.darkGrey,
        fontsiz: FontSiz.s16,
      ),
      bodySmall: GetRegular(color: ColorManager.grey1, fontsiz: FontSiz.s15),
      titleSmall: GetMedium(
        color: ColorManager.greycolor,
        fontsiz: FontSiz.s12,
      ),
    ),
  );
}
