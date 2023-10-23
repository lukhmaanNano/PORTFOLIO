import 'package:flutter/material.dart';
import 'package:portfolio/styles/theme.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage('assets/images/back3.jpg'), context);
    precacheImage(const AssetImage('assets/images/man.jpg'), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      scrollBehavior: const ScrollBehavior(
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
      theme: ThemeColors().lightTheme,
      home: const Dashboard(),
    );
  }
}
