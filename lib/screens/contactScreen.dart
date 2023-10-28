import 'dart:io' show Platform;
import 'package:url_launcher/url_launcher.dart';
import '../personalData/contactStrings.dart';
import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/Responsive.dart';
import '../styles/common Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  String? url;

  Future<void> contact(String val) async {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: ContactStrings.contactMail,
        queryParameters: {'subject': ContactStrings.contactMailSubject, 'body': ContactStrings.contactMailBody},
      );
      if(val == "mail"){
        url = ContactStrings.contactMailWeb;
      }else if(val == "git"){
        url = ContactStrings.contactGit;
      }else if(val == "discord"){
        url = ContactStrings.contactDiscord;
      }else if(val == "linkedIn"){
        url = ContactStrings.contactLinkedIn;
      }
      try {
        if (await canLaunch(url!)) {
          await launch(url!);
        }if(val == 'mail' && Platform.isAndroid){
          await launch(emailLaunchUri.toString());
        }else{
          throw 'Could not launch $url';
        }
      } catch (e) {
        print('Error: $e');
      }
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Column(
      children: [
        SizedBox(
          width: displayWidth(context) * 0.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:(){
                  contact("git");
                },
                child: SvgPicture.asset(ContactStrings.contactGitLogo,height:20,width:20,
                    color: brandIcon),
              ),
              InkWell(
                onTap:(){
                  contact("discord");
                },
                child: SvgPicture.asset(ContactStrings.contactDiscordLogo,height:20,width:20,
                    color: brandIcon),
              ),
              InkWell(
                onTap:(){
                  contact("mail");
                },
                child: SvgPicture.asset(ContactStrings.contactMailLogo,height:20,width:20,
                    color: brandIcon),
              ),
              InkWell(
                onTap:(){
                  contact("linkedIn");
                },
                child: SvgPicture.asset(ContactStrings.contactLinkedInLogo,height:20,width:20,
                    color: brandIcon),
              )
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
            height: displayHeight(context) * 0.06,
            width: double.infinity,
            color: const Color(0xFF171c1f),
            child: Center(child: Text(ContactStrings.contactRights, style: mobileRights))),
      ],
    );
  }

  Widget web(){
    return Container(
        height: displayHeight(context) * 0.1,
        color: const Color(0xFF171c1f),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(ContactStrings.contactRights, style: medium4),
              SizedBox(
                width: displayWidth(context) * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap:(){
                        contact("git");
                      },
                      child: SvgPicture.asset(ContactStrings.contactGitLogo,height:20,width:20,
                          color: brandIcon),
                    ),
                    InkWell(
                      onTap:(){
                        contact("discord");
                      },
                      child: SvgPicture.asset(ContactStrings.contactDiscordLogo,height:20,width:20,
                          color: brandIcon),
                    ),
                    InkWell(
                      onTap:(){
                        contact("mail");
                      },
                      child: SvgPicture.asset(ContactStrings.contactMailLogo,height:20,width:20,
                          color: brandIcon),
                    ),
                    InkWell(
                      onTap:(){
                        contact("linkedIn");
                      },
                      child: SvgPicture.asset(ContactStrings.contactLinkedInLogo,height:20,width:20,
                          color: brandIcon),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
