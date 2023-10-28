import 'package:flutter/material.dart';
import '../controller/hoverController.dart';
import 'CommonTextStyle.dart';
import 'package:get/get.dart';
import 'common Color.dart';

class ThemeColors {
  final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: primaryColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    dialogBackgroundColor: Colors.black12,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.windows: ZoomPageTransitionsBuilder(),
        TargetPlatform.macOS :  ZoomPageTransitionsBuilder(),
      },
    ),
    appBarTheme: const AppBarTheme(
        // foregroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        titleTextStyle: TextStyle(fontFamily: 'Eras Demi', fontSize: 20)),
    bottomSheetTheme:  const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))),
      backgroundColor: primaryColor,
      surfaceTintColor: primaryColor,
    ),
    cardTheme:  const CardTheme(
      color: primaryColor,
      surfaceTintColor: primaryColor,
    ),
    buttonTheme: const ButtonThemeData(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
          backgroundColor:MaterialStateProperty.all<Color>(iconColor),
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
    ),
    dividerColor: buttonForeground,
    primaryColor: primaryColor,
    scrollbarTheme: Styles.scrollbarTheme,
  );
}
