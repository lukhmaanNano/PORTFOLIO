import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../personalData/aboutStrings.dart';
import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("About Me", style: mobileHeader),
            const SizedBox(height: 50),
            SizedBox(
              width: displayWidth(context) * 0.9,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.8,
                    mainAxisSpacing: 0.2,
                    childAspectRatio: 1.7),
                itemCount: AboutStrings.aboutMobile.length,
                itemBuilder: (context, index) {
                  return FadeIn(
                      duration: const Duration(seconds: 2),
                      child: AboutStrings.aboutMobile[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget web(){
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 45.0,right: 45.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("About Me", style: header),
            const SizedBox(height: 30),
            SizedBox(
              width: displayWidth(context) * 0.9,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 40,
                    childAspectRatio: 2.2),
                itemCount: AboutStrings.aboutWidget.length,
                itemBuilder: (context, index) {
                  return FadeIn(
                      duration: const Duration(seconds: 2),
                      child: AboutStrings.aboutWidget[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
