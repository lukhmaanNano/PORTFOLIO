import 'package:flutter/material.dart';
import '../styles/common Color.dart';

class ToolStrings{
  static const toolHeader = "Tools";

  static Decoration toolForegroundDecoration = const  BoxDecoration(
       gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.1, 0.9, 1],
          colors: [
            primaryColor,
            Colors.transparent,
            Colors.transparent,
            primaryColor,
           ],
       ),
     );
  static const toolAlert1 = "Scroll Outside The Device To";
  static const toolAlert2 = "See My Other Stuff's !";
  static const toolBackgroundImage = "assets/images/back1.jpg";

  static const tool1Image = "assets/images/xcode.png";
  static const tool1Name = "Xcode";
  static const tool1Content = "Proficient in Xcode, the integrated development environment for macOS, iOS, iPadOS, watchOS, and tvOS. Skilled in using Xcode's comprehensive set of tools to create seamless and innovative applications for Apple platforms.";

  static const tool2Image = "assets/images/androidStudio.svg";
  static const tool2Name = "Android Studio";
  static const tool2Content = "Experienced in Android Studio, the official integrated development environment (IDE) for Android app development. Skilled in harnessing its tools and resources to create high-performance and user-friendly Android applications.";

  static const tool3Image = "assets/images/vsCode.png";
  static const tool3Name = "Visual Studio";
  static const tool3Content = "Adept in utilizing Visual Studio for efficient and collaborative application development. Proficient in leveraging its powerful features to create robust and scalable solutions.";

  static const tool4Image = "assets/images/flutterFlow.png";
  static const tool4Name = "Flutter Flow";
  static const tool4Content = "FlutterFlow simplifies Flutter app development through a user-friendly interface, allowing for visual design, prototyping, and deployment. With drag-and-drop features and integrated database support, it accelerates the creation of cross-platform mobile apps without extensive coding.";

  static const tool5Image = "assets/images/figma.png";
  static const tool5Name = "Figma (Basics)";
  static const tool5Content = "Familiarity with Figma, a collaborative design tool, streamlining the design and prototyping process for effective communication within development teams.";
}