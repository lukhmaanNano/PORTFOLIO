import 'package:url_launcher/url_launcher.dart';
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
    const email = 'mohamedlukhmaan@gmail.com';
    if(val == "mail"){
      url = 'mailto:$email?subject=We%20Are%20Hiring%20You&body=Hello%20Mohamed';
    }else if(val == "git"){
      url = 'https://github.com/lukhmaanNano';
    }else if(val == "discord"){
      url = 'https://discord.com/invite/7Pegz3BT';
    }else if(val == "linkedIn"){
      url = 'https://www.linkedin.com/in/mohamed-lukhmaan';
    }
    if (await canLaunch(url!)) {
      await launch(url!);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: web());
  }

  Widget mobile(){
    return Text("Contact",style: header);
  }

  Widget web(){
    return Container(
        height: displayHeight(context) * 0.1,
        color: const Color(0xFF171c1f),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("All Rights Reserved © MOHAMED LUKHMAAN", style: medium4),
            SizedBox(
              width: displayWidth(context) * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:(){
                      contact("git");
                    },
                    child: SvgPicture.asset("assets/icons/github.svg",height:20,width:20,
                        color: brandIcon),
                  ),
                  InkWell(
                    onTap:(){
                      contact("discord");
                    },
                    child: SvgPicture.asset("assets/icons/discord.svg",height:20,width:20,
                        color: brandIcon),
                  ),
                  InkWell(
                    onTap:(){
                      contact("mail");
                    },
                    child: SvgPicture.asset("assets/icons/mail.svg",height:20,width:20,
                        color: brandIcon),
                  ),
                  InkWell(
                    onTap:(){
                      contact("linkedIn");
                    },
                    child: SvgPicture.asset("assets/icons/linkedin.svg",height:20,width:20,
                        color: brandIcon),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
