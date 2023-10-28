import 'package:animate_do/animate_do.dart';
import '../personalData/projectStrings.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

import '../styles/common Color.dart';


class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  late VideoPlayerController videoPlayerController;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    final link = Uri.parse("https://dl.dropboxusercontent.com/s/yzzt3g74an6j3lk/Header%20video%20web%201080.mp4?dl=0");
    videoPlayerController = VideoPlayerController.networkUrl(link);
    initializeVideoPlayerFuture = videoPlayerController.initialize().then((_){
      videoPlayerController.play();
      videoPlayerController.setLooping(true);
    });
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Container(
      width: double.infinity,
      foregroundDecoration: ProjectStrings.projectForegroundDecoration,
      decoration: ProjectStrings.projectDecoration,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 12.0),
        child: Column(
          mainAxisAlignment : MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Text(ProjectStrings.projectHeader, style: mobileHeader),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(ProjectStrings.project1Logo,height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text(ProjectStrings.projectName1,style:mobileTextBtn2),
                      Text(ProjectStrings.project1Type,style:mobileTextBtn2),
                    ],
                  ),
                ),
                Expanded(
                  flex:2,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Text(
                        ProjectStrings.project1Content,
                        style: mobileProject),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  flex:2,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Text(
                        ProjectStrings.project2Content,
                        style: mobileProject),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(ProjectStrings.project2Logo,height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text(ProjectStrings.projectName2,style:mobileTextBtn2),
                      Text(ProjectStrings.project2Type,style:mobileTextBtn2),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(ProjectStrings.project3Logo,height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text(ProjectStrings.projectName3,style:mobileTextBtn2),
                      Text(ProjectStrings.projectType3,style:mobileTextBtn2),
                    ],
                  ),
                ),
                Expanded(
                  flex:2,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Text(
                        ProjectStrings.project3Content,
                        style: mobileProject),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  flex:2,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Text(
                        ProjectStrings.project4Content,
                        style: mobileProject),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(ProjectStrings.project4Logo,height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text(ProjectStrings.projectName4,style:mobileTextBtn2),
                      Text(ProjectStrings.project4Type,style:mobileTextBtn2),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(ProjectStrings.project5Logo,height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text(ProjectStrings.projectName5Mobile1,style:mobileTextBtn2),
                      Text(ProjectStrings.projectName5Mobile2,style:mobileTextBtn2),
                    ],
                  ),
                ),
                Expanded(
                  flex:2,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Text(
                        ProjectStrings.project5Content,
                        style: mobileProject),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget web(){
    return
      // Stack(
      // clipBehavior: Clip.none,
      // fit: StackFit.loose,
      // alignment: Alignment.center,
      // children: [
      //   FutureBuilder(
      //     future:initializeVideoPlayerFuture,
      //     builder:(context,snapshot){
      //       if(snapshot.connectionState == ConnectionState.done){
      //         return Stack(
      //           clipBehavior: Clip.none,
      //           children: [
      //             AspectRatio(
      //               aspectRatio: videoPlayerController.value.aspectRatio,
      //               child: VideoPlayer(videoPlayerController),
      //             ),
      //             Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Container(
      //                   height: 100, // Adjust the height as needed
      //                   decoration: const BoxDecoration(
      //                     gradient: LinearGradient(
      //                       colors: [primaryColor,Colors.transparent],
      //                       begin: Alignment.topCenter,
      //                       end: Alignment.bottomCenter,
      //                     ),
      //                   ),
      //                 ),
      //                 const SizedBox(height:600),
      //                 Container(
      //                   height: 100, // Adjust the height as needed
      //                   decoration:  BoxDecoration(
      //                     gradient: LinearGradient(
      //                       colors: [Colors.black, primaryColor.withOpacity(0.5)],
      //                       begin: Alignment.topCenter,
      //                       end: Alignment.bottomCenter,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //
      //           ],
      //         );
      //       }else{
      //         return Center(child:Container(decoration: ProjectStrings.projectDecoration,));
      //       }
      //     }
      //   ),
        Container(
          width: double.infinity,
          foregroundDecoration: ProjectStrings.projectForegroundDecoration,
          decoration: ProjectStrings.projectDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Column(
              mainAxisAlignment : MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Text(ProjectStrings.projectHeader, style: header),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(ProjectStrings.project1Logo,height: 50,width: 50),
                              )),
                          const SizedBox(height:10),
                          Text("${ProjectStrings.projectName1} ${ProjectStrings.project1Type}",style:textBtn2),
                        ],
                      ),
                    ),
                    Expanded(
                      flex:2,
                      child: FadeIn(
                        duration: const Duration(seconds: 2),
                        child: Text(
                            ProjectStrings.project1Content,
                            style: medium3),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      flex:2,
                      child: FadeIn(
                        duration: const Duration(seconds: 2),
                        child: Text(
                            ProjectStrings.project2Content,
                            style: medium3),
                      ),
                    ),
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(ProjectStrings.project2Logo,height: 50,width: 50),
                              )),
                          const SizedBox(height:10),
                          Text("${ProjectStrings.projectName2} ${ProjectStrings.project2Type}",style:textBtn2),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(ProjectStrings.project3Logo,height: 50,width: 50),
                              )),
                          const SizedBox(height:10),
                          Text("${ProjectStrings.projectName3} ${ProjectStrings.projectType3}",style:textBtn2),
                        ],
                      ),
                    ),
                    Expanded(
                      flex:2,
                      child: FadeIn(
                        duration: const Duration(seconds: 2),
                        child: Text(
                            ProjectStrings.project3Content,
                            style: medium3),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      flex:2,
                      child: FadeIn(
                        duration: const Duration(seconds: 2),
                        child: Text(
                            ProjectStrings.project4Content,
                            style: medium3),
                      ),
                    ),
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(ProjectStrings.project4Logo,height: 50,width: 50),
                              )),
                          const SizedBox(height:10),
                          Text("${ProjectStrings.projectName4} ${ProjectStrings.project4Type}",style:textBtn2),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(ProjectStrings.project5Logo,height: 50,width: 50),
                              )),
                          const SizedBox(height:10),
                          Text(ProjectStrings.projectName5Web,style:textBtn2),
                        ],
                      ),
                    ),
                    Expanded(
                      flex:2,
                      child: FadeIn(
                        duration: const Duration(seconds: 2),
                        child: Text(
                            ProjectStrings.project5Content,
                            style: medium3),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        );
    //   ],
    // );
  }
}
