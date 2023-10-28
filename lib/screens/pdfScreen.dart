import 'package:portfolio/styles/common%20Color.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leading:InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios,color:Colors.white)),
          backgroundColor: primaryColor,
          centerTitle:false,
          title: Text("Resume",style:mobileHeader),
        ),
        body: SfPdfViewer.asset("assets/pdf/resume.pdf"));
  }

  Widget web(){
    return  Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leading:InkWell(
              onTap: (){
                Navigator.pop(context);
                },
              child: const Icon(Icons.arrow_back_ios,color:Colors.white)),
          backgroundColor: primaryColor,
          centerTitle:false,
          title: Text("Resume",style:header),
        ),
        body: SfPdfViewer.asset("assets/pdf/resume.pdf"));
  }
}
