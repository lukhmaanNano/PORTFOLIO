import 'package:flutter/material.dart';
import '../styles/common Color.dart';

class ProjectStrings{
  static const projectHeader = "Projects";

  static Decoration projectDecoration =const BoxDecoration(
    image:  DecorationImage(
      image: AssetImage("assets/images/back3.jpg"),
      fit: BoxFit.cover,
    ),
  );

  static Decoration projectForegroundDecorationWeb =  BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0.3, 0.4, 0.8, 0.9],
      colors: [
        primaryColor.withOpacity(0.5),
        Colors.transparent,
        Colors.transparent,
        primaryColor,
      ],
    ),
  );

  static Decoration projectForegroundDecoration = const BoxDecoration(
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
  );

  static const project1Logo = "assets/images/technician.png";
  static const projectName1 = "B2C Technician";
  static const project1Type = "(Mobile)";
  static const project1Content = "The B2C Technician app revolutionizes field services, providing a seamless platform for technicians to receive, process, and manage service requests. This mobile app empowers authorized users with a range of features to enhance the efficiency of maintenance activities.";

  static const project2Logo = "assets/images/consumer.png";
  static const projectName2 = "B2C Consumer";
  static const project2Type = "(Mobile)";
  static const project2Content = "B2C Consumer is your go-to solution for hassle-free home maintenance services. With a simple click, users can access a range of services, including air conditioning, civil maintenance, electrical solutions, and specialized services.";

  static const project3Logo = "assets/images/dashboard.png";
  static const projectName3 = "Smart Helpdesk";
  static const projectType3 = "(Mobile & Web)";
  static const project3Content = "This web and mobile portal lets facility occupants easily submit and track complaints and service requests. Property owners and service providers benefit from quick response times and efficient service delivery. The tool is accessible online, ensuring convenience, and users can track request status effortlessly.";

  static const project4Logo = "assets/images/xceed.svg";
  static const projectName4 = "Smart Dashboard";
  static const project4Type = "(Web)";
  static const project4Content = "Experience the power of real-time business insights with Smart Dashboard, a cutting-edge business intelligence solution. This transformative tool empowers you to unlock the full potential of your data, providing valuable insights and fostering informed decision-making.";

  static const project5Logo = "assets/images/groupAttendance.png";
  static const projectName5Web = "Smart Group Attendance (Mobile)";
  static const projectName5Mobile1 = "Smart Group";
  static const projectName5Mobile2 = "Attendance (Mobile)";
  static const project5Content = "Explore an innovative alternative to traditional biometric devices—an advanced mobile app for attendance tracking. In this solution, an authorized group leader uses a smart mobile app to capture attendance, offering a range of advanced features for enhanced accuracy and confidence in data capture.";
}