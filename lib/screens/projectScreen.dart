import 'package:animate_do/animate_do.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';
import '../styles/common Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {


  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Text("Projects",style: header);
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
          image: AssetImage("assets/images/back3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 45.0,right: 45.0),
        child: Column(
          mainAxisAlignment : MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 60),
            Text("Projects", style: header),
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
                            child: Image.asset("assets/images/technician.png",height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text("B2C Technician (Mobile)",style:textBtn2),
                    ],
                  ),
                ),
                Expanded(
                  flex:2,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Text(
                        "The B2C Technician app revolutionizes field services, providing a seamless platform for technicians to receive, process, and manage service requests. This mobile app empowers authorized users with a range of features to enhance the efficiency of maintenance activities.",
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
                        "B2C Consumer is your go-to solution for hassle-free home maintenance services. With a simple click, users can access a range of services, including air conditioning, civil maintenance, electrical solutions, and specialized services.",
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
                            child: Image.asset("assets/images/consumer.png",height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text("B2C Consumer (Mobile)",style:textBtn2),
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
                            child: Image.asset("assets/images/dashboard.png",height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text("Smart Helpdesk (Mobile & Web)",style:textBtn2),
                    ],
                  ),
                ),
                Expanded(
                  flex:2,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Text(
                        "This web and mobile portal lets facility occupants easily submit and track complaints and service requests. Property owners and service providers benefit from quick response times and efficient service delivery. The tool is accessible online, ensuring convenience, and users can track request status effortlessly.",
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
                        "Experience the power of real-time business insights with Smart Dashboard, a cutting-edge business intelligence solution. This transformative tool empowers you to unlock the full potential of your data, providing valuable insights and fostering informed decision-making.",
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
                            child: SvgPicture.asset("assets/images/xceed.svg",height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text("Smart Dashboard (Web)",style:textBtn2),
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
                            child: Image.asset("assets/images/groupAttendance.png",height: 50,width: 50),
                          )),
                      const SizedBox(height:10),
                      Text("Smart Group Attendance (Mobile)",style:textBtn2),
                    ],
                  ),
                ),
                Expanded(
                  flex:2,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Text(
                        "Explore an innovative alternative to traditional biometric devices—an advanced mobile app for attendance tracking. In this solution, an authorized group leader uses a smart mobile app to capture attendance, offering a range of advanced features for enhanced accuracy and confidence in data capture.",
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
  }
}
