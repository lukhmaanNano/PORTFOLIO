import 'package:flutter/material.dart';
import '../styles/common Color.dart';

class ProfileStrings{

  static Decoration profileDecoration = const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0, 0.1, 0.9, 1],
        colors: [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          primaryColor,
        ],
      ));

  static const backgroundJson = "assets/lottie/back1.json";
  static const foregroundJson= "assets/lottie/back5.json";
  static const profileVector = "assets/images/profile.svg";
  static const hello = "Hello, World! I'm";
  static const name = "M O H A M E D  L U K H M A A N";
  static const nameMobilePrimary = "M O H A M E D";
  static const nameMobileSecondary = "L U K H M A A N";
  static const position = "Flutter Developer";
  static const discoverQuote = "To discover more about me, scroll through my website. You'll find my bio, education, and experience,";
  static const discoverQuoteSecondary = "offering a clear picture of who I am.";
  static const discoverQuotePrimaryMobile = "To discover more about me, scroll through my website.";
  static const discoverQuoteSecondaryMobile = "You'll find my bio, education, and experience,";
  static const discoverQuoteThreeMobile = "offering a clear picture of who I am.";
  static const profileHeader = "Profile";
  static const profileContent = "As an accomplished Flutter developer with over two years of dedicated expertise, I specialize in mobile application development. My proficiency extends to crafting engaging and user-friendly applications using Flutter. Additionally, I bring valuable experience in web application design, contributing significantly to project success. Known for my commitment to delivering high-quality applications, I thrive in collaborative environments and pride myself on attention to detail. With a track record of contributing to the success of every project, I am a valuable asset to any development team.";
}