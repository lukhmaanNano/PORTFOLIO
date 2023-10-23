import 'package:device_frame/device_frame.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/styles/Responsive.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/common Color.dart';
import 'package:flutter/material.dart';


class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Text("Skills",style: header);
  }

  Widget web(){
    return Container(
      width: double.infinity,
      foregroundDecoration: const BoxDecoration(
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
      ),
      // decoration: const BoxDecoration(
      //   image:  DecorationImage(
      //     image: AssetImage("assets/images/back3.jpg"),
      //     fit: BoxFit.fill,
      //   ),
      // ),
      child: Stack(
        alignment:Alignment.center,
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          Lottie.asset(
            'assets/lottie/back4.json',
            width:double.infinity,
            fit:BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: SizedBox(
              // width: displayWidth(context) * 0.6,
              child: DeviceFrame(
                device: Devices.ios.iPadAir4,
                isFrameVisible: true,
                orientation: Orientation.landscape,
                screen:Container(
                  decoration:const BoxDecoration(
                    color:  Color(0xFF171c1f),
                    // borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                      child: SingleChildScrollView(
                        controller:scrollController,
                        child: Column(
                            children: [
                              const SizedBox(height: 30),
                              Text("Skills", style: header),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(left:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        left: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: SvgPicture.asset("assets/images/flutter.svg",height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:10.0),
                                                        child: Text("Flutter",style:textBtn2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:2,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Proficient in developing cross-platform mobile applications with Flutter, leveraging its rich set of features for seamless user experiences.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(right:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:2,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Proficient in Dart, I specialize in developing cross-platform mobile applications with Flutter, utilizing Dart's powerful features to create seamless and user-friendly experiences. My expertise in Dart enables me to deliver high-quality and versatile solutions for mobile platforms.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset("assets/images/dart.png",height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right:10.0),
                                                        child: Text("Dart",style:textBtn2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(left:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        left: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: SvgPicture.asset("assets/images/react.svg",color:const Color(0xFF61DBFB),height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Text("React (Basics)",style:textBtn2),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:2,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Familiarity with React, laying a foundation for understanding front-end development principles and enhancing my versatility.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(right:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:2,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Proficient in HTML, the backbone of web development, ensuring the creation of structured and semantic web pages.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset("assets/images/html.png",height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right:10.0),
                                                        child: Text("HTML",style:textBtn2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(left:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        left: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset("assets/images/css.png",height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:10.0),
                                                        child: Text("CSS",style:textBtn2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:2,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Skilled in CSS, enabling the design and styling of web content to deliver visually appealing and user-friendly interfaces.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(right:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment:CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Fundamental knowledge of JavaScript, providing a solid understanding of dynamic scripting in web development.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset("assets/images/js.png",height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Text("JavaScript (Basics)",style:textBtn2),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(left:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        left: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset("assets/images/git.png",height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:10.0),
                                                        child: Text("Git",style:textBtn2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:2,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Well-versed in Git, facilitating collaborative development, version control, and efficient code management.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(right:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:2,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Experienced in deploying mobile applications to both the Google Play Store and Apple App Store, ensuring widespread availability and accessibility for users on Android and iOS platforms.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: SvgPicture.asset("assets/icons/appDeploy.svg",height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Text("App Deployment",style:textBtn2),
                                                      const SizedBox(height:5),
                                                      Text("(Play Store & App Store)",style:textBtn2),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(left:20.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        left: BorderSide(width: 0.6, color: iconColor),
                                      ),
                                    ),
                                    width:double.infinity,
                                    child:Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex:1,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Card(
                                                          color:Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12.0),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset("assets/images/firebase.png",height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:8.0),
                                                        child: Text("Firebase",style:textBtn2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex:2,
                                                  child: Column(
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(foregroundColor: secondaryColor,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                          SizedBox(width:10),
                                                          CircleAvatar(backgroundColor: lightBlue,radius:4),
                                                        ],
                                                      ),
                                                      Text(
                                                          "Experienced in harnessing Firebase to enable push notification systems, seamless Google Maps integration, and secure login authentication. Proficient in leveraging Firebase services for dynamic and feature-rich applications.",
                                                          style: medium3),
                                                    ],
                                                  ),
                                                ),

                                              ]
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 30),
                            ]
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
