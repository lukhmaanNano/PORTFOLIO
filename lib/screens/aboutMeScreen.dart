import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';
import '../styles/common Color.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  List<Widget> aboutWidget = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Full Name", style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,"assets/icons/user.svg",height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text("Mohamed Lukhmaan - M.",style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Gender", style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,"assets/icons/gender.svg",height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text("Male (He/Him/His).",style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Birthday", style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,"assets/icons/birthday.svg",height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text("April 18th 2001.",style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Current Location", style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,"assets/icons/location.svg",height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text("Sirkhali,609117,",style: primaryStyle ),
        Text("Mayladudurai(D.T),Tamil Nadu.",style: primaryStyle )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Nationality", style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,"assets/icons/nationality.svg",height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text("India.",style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Hobbies", style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,"assets/icons/hobbie.svg",height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text("Coding.",style: primaryStyle ),
        Text("Learning New Things.",style: primaryStyle ),
        Text("Photography.",style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Languages", style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,"assets/icons/language.svg",height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text("Tamil (Native).",style: primaryStyle ),
        Text("English (Professional).",style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Goal", style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,"assets/icons/goal.svg",height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text("To grow personally and professionally,",style: primaryStyle ),
        Text("while making a positive impact on the community.",style: primaryStyle ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Text("About Me",style: header);
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
                itemCount: aboutWidget.length,
                itemBuilder: (context, index) {
                  return FadeIn(
                      duration: const Duration(seconds: 2),
                      child: aboutWidget[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
