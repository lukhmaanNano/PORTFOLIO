import 'package:animate_do/animate_do.dart';
import 'package:lottie/lottie.dart';
import '../personalData/educationStrings.dart';
import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';
import '../styles/common Color.dart';
import 'package:flutter/material.dart';

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
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        Positioned(
          top:180,
          left: -65,
          child: Lottie.asset(
            EducationStrings.eduBackgroundJson,
            height:500,
            fit:BoxFit.cover,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment : MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(EducationStrings.eduHeader, style: mobileHeader),
                    const SizedBox(height: 30),
                    SizedBox(
                      child: FadeIn(
                        duration: const Duration(seconds: 2),
                        child: Text(
                            EducationStrings.eduContent,
                            style: mobileMedium3),
                      ),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
                SizedBox(
                  height: displayHeight(context) * 0.26,
                  child: Container(
                    decoration:  BoxDecoration(
                      borderRadius:BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: AssetImage(EducationStrings.eduBackgroundImage),
                        fit: BoxFit.cover,
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
                                        child: Image.asset(EducationStrings.eduCollege1Logo,height: 40,width: 40),
                                      )),
                                  const SizedBox(width:20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.school_outlined,color:iconColor),
                                          const SizedBox(width:10),
                                          Text(EducationStrings.eduCourse1Name,style:companyNameMobile),
                                        ],
                                      ),
                                      const SizedBox(height:10),
                                      Text(EducationStrings.eduCollege1Address1, style: mobilePrimary),
                                      Text(EducationStrings.eduCollege1Address2, style: mobilePrimary),
                                      Text(EducationStrings.eduCollege1Year, style: mobilePrimary),
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
                                        child: Image.asset(EducationStrings.eduCollege2Logo,height: 40,width: 40),
                                      )),
                                  const SizedBox(width:15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.school_outlined,color:iconColor),
                                          const SizedBox(width:10),
                                          Text(EducationStrings.eduCourse2Name,style:companyNameMobile),
                                        ],
                                      ),
                                      const SizedBox(height:10),
                                      Text(EducationStrings.eduCollege2Address, style: mobilePrimary),
                                      Text(EducationStrings.eduCollege2Year, style: mobilePrimary),
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
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget web(){
    return Stack(
      clipBehavior: Clip.none,
      // fit: StackFit.loose,
      alignment: Alignment.bottomRight,
      children: [
        Positioned(
          top:18,
          right: -120,
          child: Lottie.asset(
            EducationStrings.eduBackgroundJson,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex:2,
                  child: Column(
                    mainAxisAlignment : MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(EducationStrings.eduHeader, style: header),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: displayWidth(context) * 0.5,
                        child: FadeIn(
                          duration: const Duration(seconds: 2),
                          child: Text(
                              EducationStrings.eduContent,
                              style: medium3),
                        ),
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
                Expanded(
                    flex:1,
                    child: SizedBox(
                      height: displayHeight(context) * 0.4,
                      child: Container(
                        decoration:  BoxDecoration(
                          borderRadius:BorderRadius.circular(12.0),
                          image: const DecorationImage(
                            image: AssetImage(EducationStrings.eduBackgroundImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          color:primaryColor.withOpacity(0.4),
                          child: Padding(
                            padding: const EdgeInsets.only(right:8.0,top:8.0,bottom:8.0,left:15.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex:1,
                                        child: Card(
                                            color:Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Image.asset(EducationStrings.eduCollege1Logo,height: 50,width: 50),
                                            )),
                                      ),
                                      const SizedBox(width:15),
                                      Expanded(
                                        flex:4,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(Icons.school_outlined,color:iconColor),
                                                const SizedBox(width:10),
                                                SizedBox(
                                                    width:displayWidth(context) * 0.18,
                                                    child: Text(EducationStrings.eduCourse1Name,style:textBtn2)),
                                              ],
                                            ),
                                            const SizedBox(height:10),
                                            Text(EducationStrings.eduCollege1Address1, style: primaryStyle),
                                            Text(EducationStrings.eduCollege1Address2, style: primaryStyle),
                                            Text(EducationStrings.eduCollege1Year, style: primaryStyle),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height:30),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex:1,
                                        child: Card(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Image.asset(EducationStrings.eduCollege2Logo,height: 50,width: 50),
                                            )),
                                      ),
                                      const SizedBox(width:15),
                                      Expanded(
                                        flex:4,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(Icons.school_outlined,color:iconColor),
                                                const SizedBox(width:10),
                                                SizedBox(
                                                    width:displayWidth(context) * 0.18,
                                                    child: Text(EducationStrings.eduCourse2Name,style:textBtn2)),
                                              ],
                                            ),
                                            const SizedBox(height:10),
                                            Text(EducationStrings.eduCollege2Address, style: primaryStyle),
                                            Text(EducationStrings.eduCollege2Year, style: primaryStyle),
                                          ],
                                        ),
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
              ],
            ),
          ),
        ),
      ],
    );
  }

}
