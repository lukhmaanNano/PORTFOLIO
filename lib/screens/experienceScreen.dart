import 'package:lottie/lottie.dart';
import '../personalData/experienceStrings.dart';
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
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        Positioned(
          left: -40,
          top:180,
          child: Lottie.asset(
            ExperienceStrings.expBackgroundJson,
            height:500,
            fit:BoxFit.cover,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0,right:12.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(ExperienceStrings.expHeader, style: mobileHeader),
                    const SizedBox(height: 30),
                    SizedBox(
                      child: Text(
                          ExperienceStrings.expContent,
                          style: mobileMedium3),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
                SizedBox(
                  height: displayHeight(context) *0.23,
                  child: Container(
                    decoration:  BoxDecoration(
                      borderRadius:BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: AssetImage(ExperienceStrings.expBackgroundImage),
                        fit: BoxFit.fitWidth,
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
                                  Expanded(
                                    flex:1,
                                    child: Card(
                                        color:Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(ExperienceStrings.expCompanyImage,height: 40,width: 40),
                                        )),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.work_outline_rounded,color:iconColor),
                                            const SizedBox(width:10),
                                            Expanded(child: Text(ExperienceStrings.expCompanyName,style:companyNameMobile)),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.location_on_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Expanded(child: Text(ExperienceStrings.expCompanyLocation, style: mobilePrimary)),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.call_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Text(ExperienceStrings.expCompanyContact, style: mobilePrimary),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.email_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Text(ExperienceStrings.expCompanyMail, style: mobilePrimary),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width:15)
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
      fit: StackFit.loose,
      alignment: Alignment.centerLeft,
      children: [
        Positioned(
          top: -20,
          child: Lottie.asset(
              ExperienceStrings.expBackgroundJson,
            height:500,
            fit:BoxFit.cover,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex:2,
                  child: SizedBox(
                    height: displayHeight(context) *0.28,
                    child: Container(
                      decoration:  BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          image: AssetImage(ExperienceStrings.expBackgroundImage),
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
                                          child: Image.asset(ExperienceStrings.expCompanyImage,height: 50,width: 50),
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
                                            Text(ExperienceStrings.expCompanyName,style:textBtn2),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.location_on_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Text(ExperienceStrings.expCompanyLocationWeb1, style: primaryStyle),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.location_on_outlined,color:Colors.transparent),
                                            const SizedBox(width:10),
                                            Text(ExperienceStrings.expCompanyLocationWeb2, style: primaryStyle),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.call_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Text(ExperienceStrings.expCompanyContact, style: primaryStyle),
                                          ],
                                        ),
                                        const SizedBox(height:10),
                                        Row(
                                          children: [
                                            const Icon(Icons.email_outlined,color:iconColor),
                                            const SizedBox(width:10),
                                            Text(ExperienceStrings.expCompanyMail, style: primaryStyle),
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
                Expanded(
                  flex:3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(ExperienceStrings.expHeader, style: header),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: displayWidth(context) * 0.5,
                        child: Text(
                            ExperienceStrings.expContent,
                            style: medium3),
                      ),
                      const SizedBox(height: 30),
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
