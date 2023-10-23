import 'package:animate_do/animate_do.dart';
import 'package:lottie/lottie.dart';

import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';
import '../styles/common Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Text("Education",style: header);
  }

  Widget web(){
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      // alignment: Alignment.center,
      children: [
        Positioned(
          top:18,
          child: Lottie.asset(
            'assets/lottie/back2.json',
            height:500,
            fit:BoxFit.cover,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 45.0,right: 45.0),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    flex:1,
                    child: SizedBox(
                      height: displayHeight(context) * 0.4,
                      child: Container(
                        decoration:  BoxDecoration(
                          borderRadius:BorderRadius.circular(12.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/graduate.jpg"),
                            fit: BoxFit.fitHeight,
                            // alignment: Alignment.topCenter,
                          ),
                        ),
                        child: Container(
                          color:primaryColor.withOpacity(0.4),
                          child: Padding(
                            padding: const EdgeInsets.only(right:8.0,top:8.0,bottom:8.0,left:15.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Card(
                                          color:Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset("assets/images/cah-logo.png",height: 50,width: 50),
                                          )),
                                      const SizedBox(width:20),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(Icons.school_outlined,color:iconColor),
                                              const SizedBox(width:10),
                                              Text("B.SC.COMPUTER SCIENCE",style:textBtn2),
                                            ],
                                          ),
                                          const SizedBox(height:10),
                                          Text("C.Abdul Hakeem college of", style: primaryStyle),
                                          Text("arts an science.", style: primaryStyle),
                                          Text("2018 - 2021.", style: primaryStyle),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(height:30),
                                  Row(
                                    children: [
                                      Card(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset("assets/images/alagapa-logo.png",height: 50,width: 50),
                                          )),
                                      const SizedBox(width:15),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(Icons.school_outlined,color:iconColor),
                                              const SizedBox(width:10),
                                              Text("M.C.A.",style:textBtn2),
                                            ],
                                          ),
                                          const SizedBox(height:10),
                                          Text("Alagappa University karaikudi.", style: primaryStyle),
                                          Text("pursuing graduation.", style: primaryStyle),
                                        ],
                                      )
                                    ],
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ),
                    )
                ),
                Expanded(
                  flex:2,
                  child: Column(
                    mainAxisAlignment : MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Education", style: header),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: displayWidth(context) * 0.5,
                        child: FadeIn(
                          duration: const Duration(seconds: 2),
                          child: Text(
                              "My education spans various schools, undergraduate institutions, and diverse learning platforms. Each experience has contributed to shaping my knowledge and skills. If you have any further questions about my educational background, let me know!.",
                              style: medium3),
                        ),
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
