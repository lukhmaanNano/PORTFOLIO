import 'package:flutter/material.dart';
import '../styles/common Color.dart';

class SkillStrings{
  static const skillHeader = "Skills";
  static Decoration skillDecoration = const BoxDecoration(
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
  static const skillBackground = "assets/lottie/back4.json";

  static const skill1Logo = "assets/images/flutter.svg";
  static const skill1Name = "Flutter";
  static const skill1Content = "Proficient in developing cross-platform mobile applications with Flutter, leveraging its rich set of features for seamless user experiences.";

  static const skill2Logo = "assets/images/dart.png";
  static const skill2Name = "Dart";
  static const skill2Content = "Proficient in Dart, I specialize in developing cross-platform mobile applications with Flutter, utilizing Dart's powerful features to create seamless and user-friendly experiences. My expertise in Dart enables me to deliver high-quality and versatile solutions for mobile platforms.";

  static const skill3Logo = "assets/images/react.svg";
  static const skill3Name = "React (Basics)";
  static const skill3Content = "Familiarity with React, laying a foundation for understanding front-end development principles and enhancing my versatility.";

  static const skill4Logo = "assets/images/html.png";
  static const skill4Name = "HTML";
  static const skill4Content = "Proficient in HTML, the backbone of web development, ensuring the creation of structured and semantic web pages.";

  static const skill5Logo = "assets/images/css.png";
  static const skill5Name = "CSS";
  static const skill5Content = "Skilled in CSS, enabling the design and styling of web content to deliver visually appealing and user-friendly interfaces.";

  static const skill6Logo = "assets/images/js.png";
  static const skill6Name = "JavaScript (Basics)";
  static const skill6Content = "Fundamental knowledge of JavaScript, providing a solid understanding of dynamic scripting in web development.";

  static const skill7Logo = "assets/images/git.png";
  static const skill7Name = "Git";
  static const skill7Content = "Well-versed in Git, facilitating collaborative development, version control, and efficient code management.";

  static const skill8Logo = "assets/icons/appDeploy.svg";
  static const skill8Name = "App Deployment";
  static const skill8Type1Mobile = "(Play Store &";
  static const skill8Type2Mobile = "App Store)";
  static const skill8TypeWeb = "(Play Store & App Store)";
  static const skill8Content = "Experienced in deploying mobile applications to both the Google Play Store and Apple App Store, ensuring widespread availability and accessibility for users on Android and iOS platforms.";

  static const skill9Logo = "assets/images/firebase.png";
  static const skill9Name = "Firebase";
  static const skill9Content = "Experienced in harnessing Firebase to enable push notification systems, seamless Google Maps integration, and secure login authentication. Proficient in leveraging Firebase services for dynamic and feature-rich applications.";

  static const skillAlert1 ="Scroll Outside The Device To";
  static const skillAlert2 ="See My Other Stuff's !";
}