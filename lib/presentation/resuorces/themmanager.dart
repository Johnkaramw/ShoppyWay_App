import 'package:flutter/material.dart';
import 'package:mvvm/presentation/resuorces/colors_maneger.dart';
import 'package:mvvm/presentation/resuorces/fonts_manegar.dart';
import 'package:mvvm/presentation/resuorces/styles_manager.dart';
import 'package:mvvm/presentation/resuorces/value_margen.dart';

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
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(PadingManager.p12),
      hintStyle: GetRegular(color: ColorManager.grey1, fontsiz: FontSiz.s13),
      labelStyle: GetMedium(
        color: ColorManager.greycolor,
        fontsiz: FontSiz.s15,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey1, width: FontSiz.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(PadingManager.p7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(PadingManager.p8),
        borderSide: BorderSide(color: ColorManager.grey1, width: FontSiz.s13),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey1, width: FontSiz.s14),
        borderRadius: BorderRadius.all(Radius.circular(PadingManager.p7)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey1, width: FontSiz.s15),
        borderRadius: BorderRadius.all(Radius.circular(PadingManager.p8)),
      ),
    ),
    // text them
    textTheme: TextTheme(
      headlineSmall: GetSemiBold(
        color: ColorManager.darkGrey,
        fontsiz: FontSiz.s22,
      ),
      bodySmall: GetRegular(color: ColorManager.grey1, fontsiz: FontSiz.s18),
      titleSmall: GetMedium(
        color: ColorManager.greycolor,
        fontsiz: FontSiz.s12,
      ),
    ),
  );
}
