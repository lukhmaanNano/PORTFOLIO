import 'dart:async';
import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/styles/Responsive.dart';
import '../personalData/profileStrings.dart';
import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/common Color.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late TextStyle currentTextStyle;
  int currentIndex = 0;
  final List<TextStyle> textStyles = [
    mobileHello2,
    mobileHello3,
    mobileHello4,
    mobileHello5,
    mobileHello6,
    mobileHello7,
    mobileHello1
  ];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    currentTextStyle = hello1;
    // Set up a timer to change the font style every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % textStyles.length;
        currentTextStyle = textStyles[currentIndex];
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Column(
      children: [
        Container(
          foregroundDecoration: ProfileStrings.profileDecoration,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: [
              Lottie.asset(
                   ProfileStrings.backgroundJson,
                   fit:BoxFit.cover,height:900,
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX:20,sigmaY:20,tileMode:TileMode.clamp),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 70),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            children: [
                              ElasticIn(
                                duration: const Duration(seconds: 2),
                                child: Lottie.asset(
                                  ProfileStrings.foregroundJson,
                                  height:300,
                                  fit:BoxFit.cover,
                                ),
                              ),
                              Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 350,
                                          height:60,
                                          child: Text(ProfileStrings.hello,style:currentTextStyle)),
                                      // const SizedBox(height:10),
                                      DefaultTextStyle(
                                        style: mobileBig,
                                        child: AnimatedTextKit(
                                            totalRepeatCount:1,
                                            animatedTexts:[
                                              TypewriterAnimatedText(
                                                  speed : const Duration(milliseconds: 100),
                                                  ProfileStrings.nameMobilePrimary),
                                            ]
                                        ),
                                      ),
                                      const SizedBox(height:5),
                                      DefaultTextStyle(
                                        style: mobileBig,
                                        child: AnimatedTextKit(
                                            totalRepeatCount:1,
                                            animatedTexts:[
                                              TypewriterAnimatedText(
                                                  speed : const Duration(milliseconds: 100),
                                                  ProfileStrings.nameMobileSecondary),
                                            ]
                                        ),
                                      ),
                                      Text(ProfileStrings.position, style: mobileMedium)
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(height: 130),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: SizedBox(
                              // width: displayWidth(context)*0.8,
                              child: Column(
                                children: [
                                  Text(ProfileStrings.discoverQuotePrimaryMobile, style: mobileLeanText),
                                  Text(ProfileStrings.discoverQuoteSecondaryMobile, style: mobileLeanText),
                                  Text(ProfileStrings.discoverQuoteThreeMobile, style: mobileLeanText),
                                ],
                              )),
                        ),
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0,right: 12.0,top:12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex:2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height:35),
                    Text(ProfileStrings.profileHeader,style: mobileHeader),
                    SizedBox(
                      child: Text(ProfileStrings.profileContent,style: mobileMedium3),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex:1,
                  child: SvgPicture.asset(ProfileStrings.profileVector,height:250,width:200)),
            ],
          ),
        ),
      ],
    );
  }

  Widget web(){
    return Container(
      foregroundDecoration: ProfileStrings.profileDecoration,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: [
              Lottie.asset(
                  ProfileStrings.backgroundJson,
                  fit:BoxFit.cover
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX:50,sigmaY:50,tileMode:TileMode.repeated),
                  child: Column(
                    children: [
                      const SizedBox(height: 200),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex:3,
                              child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height:70,
                                          child: Text(ProfileStrings.hello,style:currentTextStyle)),
                                      DefaultTextStyle(
                                        style: big,
                                        child: AnimatedTextKit(
                                            totalRepeatCount:1,
                                            animatedTexts:[
                                              TypewriterAnimatedText(
                                                  speed : const Duration(milliseconds: 100),
                                                  ProfileStrings.name),
                                            ]
                                        ),
                                      ),
                                      AnimatedTextKit(
                                          totalRepeatCount:2,
                                          pause : const Duration(microseconds: 0),
                                          animatedTexts: [
                                            ColorizeAnimatedText(
                                              ProfileStrings.position,
                                              textStyle: medium,
                                              colors: [
                                                popupBg1,
                                                brandGrey],
                                            ),
                                          ]
                                      ),
                                    ],
                                  )),
                            ),
                            Expanded(
                                flex:1,
                                child:ElasticIn(
                                  duration: const Duration(seconds: 2),
                                  child: Lottie.asset(
                                    ProfileStrings.foregroundJson,
                                    height:300,
                                    fit:BoxFit.cover,
                                  ),
                                )),

                          ],
                        ),
                      ),
                      const SizedBox(height: 130),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SizedBox(
                            width: displayWidth(context)*0.6,
                            child: Column(
                              children: [
                                Text(ProfileStrings.discoverQuote, style: leanText),
                                Text(ProfileStrings.discoverQuoteSecondary, style: leanText),
                              ],
                            )),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: Row(
                children: [
                  SvgPicture.asset(ProfileStrings.profileVector),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(ProfileStrings.profileHeader, style: header),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: displayWidth(context) * 0.5,
                        child: Text(ProfileStrings.profileContent,style: medium3),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
