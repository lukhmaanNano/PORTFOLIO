import 'package:flutter/material.dart';
import 'package:portfolio/screens/aboutMeScreen.dart';
import 'package:portfolio/screens/contactScreen.dart';
import 'package:portfolio/screens/educationScreen.dart';
import 'package:portfolio/screens/experienceScreen.dart';
import 'package:portfolio/screens/pdfScreen.dart';
import 'package:portfolio/screens/profileScreen.dart';
import 'package:portfolio/screens/projectScreen.dart';
import 'package:portfolio/screens/skillsScreen.dart';
import 'package:portfolio/screens/toolsScreen.dart';
import 'package:portfolio/styles/CommonTextStyle.dart';
import 'package:portfolio/styles/Responsive.dart';
import 'package:portfolio/styles/common%20Color.dart';
import 'dart:ui' as ui;
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  ScrollController scrollController = ScrollController();
  String appBarTitle = 'Portfolio';

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if(scrollController.offset < 900){
      _updateAppBarTitle('Portfolio');
    } else if (scrollController.offset < 1350) {
      _updateAppBarTitle('Profile');
    } else if (scrollController.offset < 2100) {
      _updateAppBarTitle('About Me');
    } else if (scrollController.offset < 3200) {
      _updateAppBarTitle('Projects');
    } else if (scrollController.offset < 3900){
      _updateAppBarTitle('Skills');
    }else if (scrollController.offset < 4500){
      _updateAppBarTitle('Experience');
    }else if (scrollController.offset < 5200){
      _updateAppBarTitle('Tools');
    }else {
      _updateAppBarTitle('Education');
    }
  }

  void _updateAppBarTitle(String newTitle) {
    setState(() {
      appBarTitle = newTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    const Profile(),
                    const SizedBox(height: 130),
                    const AboutMe(),
                    const SizedBox(height: 50),
                    const Projects(),
                    const SizedBox(height: 50),
                    const Skills(),
                    const SizedBox(height: 130),
                    const Experience(),
                    const SizedBox(height: 130),
                    const Tools(),
                    const SizedBox(height: 50),
                    const Education(),
                    const SizedBox(height: 200),
                    Text("Let's Code Together!.", style: leanText),
                    const SizedBox(height: 30),
                    resumeBtn(),
                    const SizedBox(height: 70),
                    const Contact()
                  ],
                ),
              ),
      ),
    );
  }

  Widget web(){
    return Scaffold(
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
              const SizedBox(height: 60),
              resumeBtn(),
              const SizedBox(height: 130),
              const Contact()
            ],
          ),
        ),
      ),
    );
  }

  Widget resumeBtn(){
    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: OutlinedButton.icon(
          style: ButtonStyle(
            overlayColor: myHoverColor,
            side: myBorderColor,
            textStyle: MaterialStateProperty.all<TextStyle>(
                bigBtnStyle1),
            iconColor: myLabelColor,
            foregroundColor: myLabelColor,
          ),
          onPressed: () {
            Get.to(const PdfScreen());
          },
          label: const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 8.0, vertical: 10),
            child: Text("View Resume"),
          ),
          icon: const Icon(Icons.arrow_back, size: 14)),
    );
  }
}