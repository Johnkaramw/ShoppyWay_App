import 'package:flutter/material.dart';
import 'package:mvvm/presentation/fonts_manegar.dart';

TextStyle _gettextStyle(double fontsiz, FontWeight fontweight, Color color) {
  return TextStyle(
    fontSize: fontsiz,
    fontFamily: FontsConsts.fontFamily,
    fontWeight: fontweight,
    color: color,
  );
}

// style ExtraBold
TextStyle GetExtraBold({double fontsiz = FontSiz.s19, required Color color}) {
  return _gettextStyle(fontsiz, fontweightmanager.ExtraBold, color);
}

// bold
TextStyle GetBold({double fontsiz = FontSiz.s17, required Color color}) {
  return _gettextStyle(fontsiz, fontweightmanager.bold, color);
}

// semibold
TextStyle GetSemiBold({double fontsiz = FontSiz.s15, required Color color}) {
  return _gettextStyle(fontsiz, fontweightmanager.SemiBold, color);
}

// style regular
TextStyle GetRegular({double fontsiz = FontSiz.s13, required Color color}) {
  return _gettextStyle(fontsiz, fontweightmanager.Regular, color);
}

// medium
TextStyle GetMedium({double fontsiz = FontSiz.s12, required Color color}) {
  return _gettextStyle(fontsiz, fontweightmanager.Medium, color);
}
