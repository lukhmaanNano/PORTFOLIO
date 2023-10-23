import 'package:device_frame/device_frame.dart';
import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';
import '../styles/common Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tools extends StatefulWidget {
  const Tools({super.key});

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Text("Tools",style: header);
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
      decoration: const BoxDecoration(
        image:  DecorationImage(
          image: AssetImage("assets/images/back1.jpg"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: SizedBox(
          width: displayWidth(context) * 1.10,
          height:displayHeight(context) * 1.1,
          child: DeviceFrame(
            device: Devices.ios.iPhone13ProMax,
            isFrameVisible: true,
            orientation: Orientation.portrait,
            screen: Container(
              decoration:const BoxDecoration(
                color:  Color(0xFF171c1f),
                // borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    controller : scrollController,
                    child: Column(
                        children: [
                          const SizedBox(height: 60),
                          Text("Tools", style: header),
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
                                                children: [
                                                  Card(
                                                      color:Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Image.asset("assets/images/xcode.png",height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text("Xcode",style:textBtn1),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex:2,
                                              child: Text(
                                                  "Proficient in Xcode, the integrated development environment for macOS, iOS, iPadOS, watchOS, and tvOS. Skilled in using Xcode's comprehensive set of tools to create seamless and innovative applications for Apple platforms.",
                                                  style: medium4),
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
                                              child: Text(
                                                  "Experienced in Android Studio, the official integrated development environment (IDE) for Android app development. Skilled in harnessing its tools and resources to create high-performance and user-friendly Android applications.",
                                                  style: medium4),
                                            ),
                                            Expanded(
                                              flex:1,
                                              child: Column(
                                                children: [
                                                  Card(
                                                      color:Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: SvgPicture.asset("assets/images/androidStudio.svg",height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text("Android Studio",style:textBtn1),
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
                                                children: [
                                                  Card(
                                                      color:Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Image.asset("assets/images/vsCode.png",height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text("Visual Studio",style:textBtn1),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex:2,
                                              child: Text(
                                                  "Adept in utilizing Visual Studio for efficient and collaborative application development. Proficient in leveraging its powerful features to create robust and scalable solutions.",
                                                  style: medium4),
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
                                              child: Text(
                                                  "FlutterFlow simplifies Flutter app development through a user-friendly interface, allowing for visual design, prototyping, and deployment. With drag-and-drop features and integrated database support, it accelerates the creation of cross-platform mobile apps without extensive coding.",
                                                  style: medium4),
                                            ),
                                            Expanded(
                                              flex:1,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Card(
                                                      color:Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Image.asset("assets/images/flutterFlow.png",height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text("Flutter Flow",style:textBtn1),
                                                  // Text("(Basics)",style:textBtn2),
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
                                                children: [
                                                  Card(
                                                      color:Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Image.asset("assets/images/figma.png",height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text("Figma (Basics)",style:textBtn1),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex:2,
                                              child: Text(
                                                  "Familiarity with Figma, a collaborative design tool, streamlining the design and prototyping process for effective communication within development teams.",
                                                  style: medium4),
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
    );
  }
}
