import 'package:lottie/lottie.dart';

import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';
import '../styles/common Color.dart';
import 'package:flutter/material.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Text("Experience",style: header);
  }

  Widget web(){
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 20,
          left:370,
          child: Lottie.asset(
            'assets/lottie/back2.json',
            height:500,
            fit:BoxFit.cover,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 45.0,right:45.0),
            child: Row(
              children: [
                Expanded(
                  flex:3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Experience", style: header),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: displayWidth(context) * 0.5,
                        child: Text(
                            "Since starting my B.Sc. in 2018, I've actively contributed to projects, gaining hands-on experience in software development. From August 2022 to the present, I've been a valuable team member at Nanosoft, where my journey has equipped me with a deep understanding of the intricacies of software development, making me adept at crafting innovative and efficient solutions.",
                            style: medium3),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Expanded(
                  flex:2,
                  child: SizedBox(
                    height: displayHeight(context) *0.28,
                    child: Container(
                      decoration:  BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/back4.png"),
                          fit: BoxFit.fitWidth,
                          // alignment: Alignment.topCenter,
                        ),
                      ),
                      child: Container(
                        color:primaryColor.withOpacity(0.4),
                        child: Padding(
                          padding: const EdgeInsets.only(right:8.0,top:8.0,bottom:8.0,left:15.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                        color:Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset("assets/images/nanosoft.png",height: 50,width: 50),
                                        )),
                                    const SizedBox(width:15),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.work_outline_rounded,color:iconColor),
                                            const SizedBox(width:10),
                                            Text("Nanosoft Engineers India Pvt Ltd.",style:textBtn2),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.location_on_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Text("#33, Sir Shanmugam Road, R.S.Puram,", style: primaryStyle),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.location_on_outlined,color:Colors.transparent),
                                            const SizedBox(width:10),
                                            Text("Coimbatore, TamilNadu, India.", style: primaryStyle),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.call_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Text("+91 9092092035", style: primaryStyle),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.email_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Text("info@nanosoftengineers.com", style: primaryStyle),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
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
