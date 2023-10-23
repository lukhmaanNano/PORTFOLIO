import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/screens/aboutMeScreen.dart';
import 'package:portfolio/screens/contactScreen.dart';
import 'package:portfolio/screens/educationScreen.dart';
import 'package:portfolio/screens/experienceScreen.dart';
import 'package:portfolio/screens/profileScreen.dart';
import 'package:portfolio/screens/projectScreen.dart';
import 'package:portfolio/screens/skillsScreen.dart';
import 'package:portfolio/screens/toolsScreen.dart';
import 'package:portfolio/styles/CommonSize.dart';
import 'package:portfolio/styles/CommonTextStyle.dart';
import 'package:portfolio/styles/common%20Color.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  ScrollController scrollController = ScrollController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primaryColor,
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          controller:scrollController,
          child: Column(
            children: [
              const Profile(),
              const SizedBox(height: 130),
              const AboutMe(),
              const SizedBox(height: 130),
              const Projects(),
              const SizedBox(height: 130),
              const Skills(),
              const SizedBox(height: 130),
              const Experience(),
              const SizedBox(height: 130),
              const Tools(),
              const SizedBox(height: 130),
              const Education(),
              const SizedBox(height: 200),
              Text("Let's Code Together!.", style: leanText),
              const SizedBox(height: 130),
              const Contact()
            ],
          ),
        ),
      ),
    );
  }
}