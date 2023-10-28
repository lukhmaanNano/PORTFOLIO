import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/styles/Responsive.dart';
import '../personalData/skillStrings.dart';
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
      foregroundDecoration: SkillStrings.skillDecoration,
      child: Stack(
        alignment:Alignment.center,
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          Lottie.asset(
            SkillStrings.skillBackground,
            width:double.infinity,
            height:600,
            fit:BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              child: DeviceFrame(
                device: Devices.ios.iPad12InchesGen4,
                isFrameVisible: true,
                orientation: Orientation.portrait,
                screen:Stack(
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
                            controller:scrollController,
                            child: InteractiveViewer(
                              child: Column(
                                  children: [
                                    const SizedBox(height: 30),
                                    Text(SkillStrings.skillHeader, style: skillHeaderMobile),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: SvgPicture.asset(SkillStrings.skill1Logo,height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:10.0),
                                                              child: Text(SkillStrings.skill1Name,style:textBtn),
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
                                                                SkillStrings.skill1Content,
                                                                style: medium2),
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
                                                                SkillStrings.skill2Content,
                                                                style: medium2),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: Image.asset(SkillStrings.skill2Logo,height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Padding(
                                                              padding: const EdgeInsets.only(right:10.0),
                                                              child: Text(SkillStrings.skill2Name,style:textBtn),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: SvgPicture.asset(SkillStrings.skill3Logo,color:const Color(0xFF61DBFB),height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Text(SkillStrings.skill3Name,style:textBtn),
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
                                                                SkillStrings.skill3Content,
                                                                style: medium2),
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
                                                                SkillStrings.skill4Content,
                                                                style: medium2),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: Image.asset(SkillStrings.skill4Logo,height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Padding(
                                                              padding: const EdgeInsets.only(right:10.0),
                                                              child: Text(SkillStrings.skill4Name,style:textBtn),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: Image.asset(SkillStrings.skill5Logo,height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:10.0),
                                                              child: Text(SkillStrings.skill5Name,style:textBtn),
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
                                                                SkillStrings.skill5Content,
                                                                style: medium2),
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
                                                                SkillStrings.skill6Content,
                                                                style: medium2),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: Image.asset(SkillStrings.skill6Logo,height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Text(SkillStrings.skill6Name,style:textBtn),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: Image.asset(SkillStrings.skill7Logo,height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:10.0),
                                                              child: Text(SkillStrings.skill7Name,style:textBtn),
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
                                                                SkillStrings.skill7Content,
                                                                style: medium2),
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
                                                                SkillStrings.skill8Content,
                                                                style: medium2),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: SvgPicture.asset(SkillStrings.skill8Logo,height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Text(SkillStrings.skill8Name,style:textBtn),
                                                            const SizedBox(height:5),
                                                            Text(SkillStrings.skill8Type1Mobile,style:textBtn),
                                                            Text(SkillStrings.skill8Type2Mobile,style:textBtn),
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
                                                                  padding: const EdgeInsets.all(12.0),
                                                                  child: Image.asset(SkillStrings.skill9Logo,height: 80,width: 80),
                                                                )),
                                                            const SizedBox(height:10),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:8.0),
                                                              child: Text(SkillStrings.skill9Name,style:textBtn),
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
                                                                SkillStrings.skill9Content,
                                                                style: medium2),
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
                    if (snack == true)
                      Positioned(
                        top:40,
                        child: BounceInUp(
                          child: SizedBox(
                            height:150,width:700,
                            child: Card(
                                color:Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child:Row(
                                  children: [
                                    const SizedBox(width:20),
                                    const Icon(Icons.receipt_long,color:iconColor,size:70),
                                    const SizedBox(width:30),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(SkillStrings.skillAlert1,style:alertWebContent),
                                        const SizedBox(height:10),
                                        Text(SkillStrings.skillAlert2,style:alertWebContent),
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
          ),
        ],
      ),
    );
  }

  Widget web(){
    return Container(
      width: double.infinity,
      foregroundDecoration: SkillStrings.skillDecoration,
      child: Stack(
        alignment:Alignment.center,
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          Lottie.asset(
            SkillStrings.skillBackground,
            width:double.infinity,
            fit:BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: SizedBox(
              child: DeviceFrame(
                device: Devices.ios.iPadAir4,
                isFrameVisible: true,
                orientation: Orientation.landscape,
                screen:Container(
                  decoration:const BoxDecoration(
                    color:  Color(0xFF171c1f),
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
                              Text(SkillStrings.skillHeader, style: header),
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
                                                            child: SvgPicture.asset(SkillStrings.skill1Logo,height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:10.0),
                                                        child: Text(SkillStrings.skill1Name,style:textBtn2),
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
                                                          SkillStrings.skill1Content,
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
                                                          SkillStrings.skill2Content,
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
                                                            child: Image.asset(SkillStrings.skill2Logo,height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right:10.0),
                                                        child: Text(SkillStrings.skill2Name,style:textBtn2),
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
                                                            child: SvgPicture.asset(SkillStrings.skill3Logo,color:const Color(0xFF61DBFB),height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Text(SkillStrings.skill3Name,style:textBtn2),
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
                                                          SkillStrings.skill3Content,
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
                                                          SkillStrings.skill4Content,
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
                                                            child: Image.asset(SkillStrings.skill4Logo,height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right:10.0),
                                                        child: Text(SkillStrings.skill4Name,style:textBtn2),
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
                                                            child: Image.asset(SkillStrings.skill5Logo,height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:10.0),
                                                        child: Text(SkillStrings.skill5Name,style:textBtn2),
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
                                                          SkillStrings.skill5Content,
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
                                                          SkillStrings.skill6Content,
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
                                                            child: Image.asset(SkillStrings.skill6Logo,height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Text(SkillStrings.skill6Name,style:textBtn2),
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
                                                            child: Image.asset(SkillStrings.skill7Logo,height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:10.0),
                                                        child: Text(SkillStrings.skill7Name,style:textBtn2),
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
                                                          SkillStrings.skill7Content,
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
                                                          SkillStrings.skill8Content,
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
                                                            child: SvgPicture.asset(SkillStrings.skill8Logo,height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Text(SkillStrings.skill8Name,style:textBtn2),
                                                      const SizedBox(height:5),
                                                      Text(SkillStrings.skill8TypeWeb,style:textBtn2),
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
                                                            child: Image.asset(SkillStrings.skill9Logo,height: 50,width: 50),
                                                          )),
                                                      const SizedBox(height:10),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:8.0),
                                                        child: Text(SkillStrings.skill9Name,style:textBtn2),
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
                                                          SkillStrings.skill9Content,
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
