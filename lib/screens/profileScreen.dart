import 'dart:async';
import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/styles/Responsive.dart';
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
    hello2,
    hello3,
    hello4,
    hello5,
    hello6,
    hello7,
    hello1
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
    return Text("Profile",style: header);
  }

  Widget web(){
    return Container(
      foregroundDecoration: const BoxDecoration(
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
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: [
              Lottie.asset(
                  'assets/lottie/back1.json',
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
                                flex:1,
                                child:ElasticIn(
                                  duration: const Duration(seconds: 2),
                                  child: Lottie.asset(
                                    'assets/lottie/back5.json',
                                    height:300,
                                    fit:BoxFit.cover,
                                  ),

                                  // CircleAvatar(
                                  //     backgroundColor:popupBg1,
                                  //     radius: 60,
                                  //     child: ClipRRect(
                                  //         borderRadius: BorderRadius.circular(60),
                                  //         child: Image.asset("assets/images/man.jpg"))),
                                )),
                            Expanded(
                              flex:3,
                              child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height:70,
                                          child: Text("Hello, World! I'm",style:currentTextStyle)),
                                      const SizedBox(height:10),
                                      DefaultTextStyle(
                                        style: big,
                                        child: AnimatedTextKit(
                                            totalRepeatCount:1,
                                            animatedTexts:[
                                              TypewriterAnimatedText(
                                                  speed : const Duration(milliseconds: 100),
                                                  "M O H A M E D  L U K H M A A N"),
                                            ]
                                        ),
                                      ),
                                      AnimatedTextKit(
                                          totalRepeatCount:2,
                                          pause : const Duration(microseconds: 0),
                                          animatedTexts: [
                                            ColorizeAnimatedText(
                                              "Flutter Developer",
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
                                Text("To discover more about me, scroll through my website. You'll find my bio, education, and experience,", style: leanText),
                                Text("offering a clear picture of who I am.", style: leanText),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Profile", style: header),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: displayWidth(context) * 0.5,
                        child: Text(
                            "As an accomplished Flutter developer with over two years of dedicated expertise, I specialize in mobile application development. My proficiency extends to crafting engaging and user-friendly applications using Flutter. Additionally, I bring valuable experience in web application design, contributing significantly to project success. Known for my commitment to delivering high-quality applications, I thrive in collaborative environments and pride myself on attention to detail. With a track record of contributing to the success of every project, I am a valuable asset to any development team.",
                            style: medium3),
                      ),
                    ],
                  ),
                  SvgPicture.asset("assets/images/profile.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
