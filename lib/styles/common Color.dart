import 'package:flutter/material.dart';
const primaryColor = Color(0xFF0e1012);
const secondaryColor = Color.fromRGBO(0, 95, 255, 0.88);
const white = Colors.white;
const iconColor = Color(0xFF007afc);
const iconColorLight = Color(0xff218fff);
const brandIcon = Color(0xFF8b96aa);
const brandGrey = Color(0xFFa0aaba);
const brandGreyLight = Color(0xffc1cad7);
const popupBg = Color(0xFF161a1d);
const popupBg1 = Color(0xFF23262D);
const lightBlue = Color(0xBD98C9FD);
const buttonForeground = Color(0xff19B0EC);



class Styles {
  static Color scaffoldBackgroundColor = const Color(0xFFF8F8F8);

  static ScrollbarThemeData scrollbarTheme =
      const ScrollbarThemeData().copyWith(
    thumbColor: MaterialStateProperty.all(scaffoldBackgroundColor),
    interactive: true,
  );
}
