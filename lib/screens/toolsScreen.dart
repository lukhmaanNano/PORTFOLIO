import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:device_frame/device_frame.dart';
import 'package:google_fonts/google_fonts.dart';
import '../personalData/toolStrings.dart';
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
  bool snack = false;

  @override
  void initState() {
    super.initState();
    // Attach a listener to the scrollController
    scrollController.addListener(_checkScrollPosition);
  }

  void _checkScrollPosition() {
    // Check if the scroll position has reached the end
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      // Show a SnackBar when the scroll is complete
        setState(() {
           snack = true;
        });
    }else{
      Timer(
          const Duration(seconds: 6),
              () =>  setState(() {
                snack = false;
              }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Container(
      width: double.infinity,
      foregroundDecoration: ToolStrings.toolForegroundDecoration,
      decoration: const BoxDecoration(
        image:  DecorationImage(
          image: AssetImage(ToolStrings.toolBackgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: DeviceFrame(
            device: Devices.ios.iPhone13ProMax,
            isFrameVisible: true,
            orientation: Orientation.portrait,
            screen: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
              alignment: Alignment.topCenter,
              children: [
                Container(
                    decoration:const BoxDecoration(
                      color:  Color(0xFF171c1f),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                        child: SingleChildScrollView(
                          controller : scrollController,
                          child: InteractiveViewer(
                            child: Column(
                                children: [
                                  const SizedBox(height: 60),
                                  Text(ToolStrings.toolHeader, style: toolHeaderMobile),
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
                                                                child: Image.asset(ToolStrings.tool1Image,height: 50,width: 50),
                                                              )),
                                                          const SizedBox(height:10),
                                                          Text(ToolStrings.tool1Name,style:textBtn1),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex:2,
                                                      child: Text(
                                                          ToolStrings.tool1Content,
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
                                                          ToolStrings.tool2Content,
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
                                                                child: SvgPicture.asset(ToolStrings.tool2Image,height: 50,width: 50),
                                                              )),
                                                          const SizedBox(height:10),
                                                          Text(ToolStrings.tool2Name,style:textBtn1),
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
                                                                child: Image.asset(ToolStrings.tool3Image,height: 50,width: 50),
                                                              )),
                                                          const SizedBox(height:10),
                                                          Text(ToolStrings.tool3Name,style:textBtn1),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex:2,
                                                      child: Text(
                                                          ToolStrings.tool3Content,
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
                                                          ToolStrings.tool4Content,
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
                                                                child: Image.asset(ToolStrings.tool4Image,height: 50,width: 50),
                                                              )),
                                                          const SizedBox(height:10),
                                                          Text(ToolStrings.tool4Name,style:textBtn1),
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
                                                                child: Image.asset(ToolStrings.tool5Image,height: 50,width: 50),
                                                              )),
                                                          const SizedBox(height:10),
                                                          Text(ToolStrings.tool5Name,style:textBtn1),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex:2,
                                                      child: Text(
                                                          ToolStrings.tool5Content,
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
                if (snack == true)
                Positioned(
                  top:40,
                  child: BounceInUp(
                    child: SizedBox(
                      height:100,width:400,
                      child: Card(
                        color:Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child:Row(
                          children: [
                            const SizedBox(width:5),
                          const Icon(Icons.receipt_long,color:iconColor,size:48),
                            const SizedBox(width:10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(ToolStrings.toolAlert1,style:alertContent),
                              const SizedBox(height:5),
                              Text(ToolStrings.toolAlert2,style:alertContent),
                            ],
                          ),
                        ],)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }

  Widget web(){
    return Container(
      width: double.infinity,
      foregroundDecoration:ToolStrings.toolForegroundDecoration,
      decoration: const BoxDecoration(
        image:  DecorationImage(
          image: AssetImage(ToolStrings.toolBackgroundImage),
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
                          Text(ToolStrings.toolHeader, style: header),
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
                                                        child: Image.asset(ToolStrings.tool1Image,height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text(ToolStrings.tool1Name,style:textBtn1),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex:2,
                                              child: Text(
                                                  ToolStrings.tool1Content,
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
                                                  ToolStrings.tool2Content,
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
                                                        child: SvgPicture.asset(ToolStrings.tool2Image,height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text(ToolStrings.tool2Name,style:textBtn1),
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
                                                        child: Image.asset(ToolStrings.tool3Image,height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text(ToolStrings.tool3Name,style:textBtn1),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex:2,
                                              child: Text(
                                                  ToolStrings.tool3Content,
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
                                                  ToolStrings.tool4Content,
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
                                                        child: Image.asset(ToolStrings.tool4Image,height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text(ToolStrings.tool4Name,style:textBtn1),
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
                                                        child: Image.asset(ToolStrings.tool5Image,height: 50,width: 50),
                                                      )),
                                                  const SizedBox(height:10),
                                                  Text(ToolStrings.tool5Name,style:textBtn1),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex:2,
                                              child: Text(
                                                  ToolStrings.tool5Content,
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
