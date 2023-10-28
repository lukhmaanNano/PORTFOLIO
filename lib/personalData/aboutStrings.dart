import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/common Color.dart';

class AboutStrings{
  static const nameIcon = "assets/icons/user.svg";
  static const nameLabel = "Full Name";
  static const name ="Mohamed Lukhmaan - M.";
  static const genderIcon = "assets/icons/gender.svg";
  static const genderLabel ="Gender";
  static const gender ="Male (He/Him/His).";
  static const birthIcon = "assets/icons/birthday.svg";
  static const dobLabel ="Birthday";
  static const dob ="April 18th 2001.";
  static const locationIcon = "assets/icons/location.svg";
  static const locationLabel ="Current Location";
  static const locationPrimary ="Sirkhali,609117,";
  static const locationSecondary ="Mayladudurai(D.T),Tamil Nadu.";
  static const nationalIcon = "assets/icons/nationality.svg";
  static const nationalLabel = "Nationality";
  static const national = "India.";
  static const hobbiesIcon = "assets/icons/hobbie.svg";
  static const hobbiesLabel = "Hobbies";
  static const hobbies = "Photography.";
  static const hobbiesPrimary = "Listing Songs.";
  static const hobbiesSecondary = "Watching Movies.";
  static const languageIcon = "assets/icons/language.svg";
  static const languageLabel = "Languages";
  static const languagePrimary = "Tamil (Native).";
  static const languageSecondary = "English (Professional).";
  static const goalIcon = "assets/icons/goal.svg";
  static const goalLabel = "Goal";
  static const goalPrimary = "To grow personally and professionally,";
  static const goalSecondary = "while making a positive impact on the community.";

  static List<Widget> aboutWidget = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(nameLabel, style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,nameIcon,height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text(name,style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(genderLabel, style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,genderIcon,height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text(gender,style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(dobLabel, style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,birthIcon,height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text(dob,style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(locationLabel, style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,locationIcon,height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text(locationPrimary,style: primaryStyle ),
        Text(locationSecondary,style: primaryStyle )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(nationalLabel, style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,nationalIcon,height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text(national,style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(hobbiesLabel, style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,hobbiesIcon,height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text(hobbies,style: primaryStyle ),
        Text(hobbiesPrimary,style: primaryStyle ),
        Text(hobbiesSecondary,style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(languageLabel, style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,languageIcon,height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text(languagePrimary,style: primaryStyle ),
        Text(languageSecondary,style: primaryStyle ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(goalLabel, style: medium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,goalIcon,height:25,width:25)
          ],
        ),
        const SizedBox(height: 15),
        Text(goalPrimary,style: primaryStyle ),
        Text(goalSecondary,style: primaryStyle ),
      ],
    ),
  ];

  static List<Widget> aboutMobile = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(nameLabel, style: mobileMedium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,nameIcon,height:18,width:18)
          ],
        ),
        const SizedBox(height: 15),
        Text(name,style: mobilePrimary ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(genderLabel, style: mobileMedium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,genderIcon,height:18,width:18)
          ],
        ),
        const SizedBox(height: 15),
        Text(gender,style: mobilePrimary ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(dobLabel, style: mobileMedium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,birthIcon,height:18,width:18)
          ],
        ),
        const SizedBox(height: 15),
        Text(dob,style: mobilePrimary ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(locationLabel, style: mobileMedium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,locationIcon,height:18,width:18)
          ],
        ),
        const SizedBox(height: 15),
        Text(locationPrimary,style: mobilePrimary ),
        Text(locationSecondary,style: mobilePrimary )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(nationalLabel, style: mobileMedium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,nationalIcon,height:18,width:18)
          ],
        ),
        const SizedBox(height: 15),
        Text(national,style: mobilePrimary ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(hobbiesLabel, style: mobileMedium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,hobbiesIcon,height:18,width:18)
          ],
        ),
        const SizedBox(height: 15),
        Text(hobbies,style: mobilePrimary ),
        Text(hobbiesPrimary,style: mobilePrimary ),
        Text(hobbiesSecondary,style: mobilePrimary ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(languageLabel, style: mobileMedium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,languageIcon,height:18,width:18)
          ],
        ),
        const SizedBox(height: 15),
        Text(languagePrimary,style: mobilePrimary ),
        Text(languageSecondary,style: mobilePrimary ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(goalLabel, style: mobileMedium3),
            const SizedBox(width: 10),
            SvgPicture.asset(color:secondaryColor,goalIcon,height:18,width:18)
          ],
        ),
        const SizedBox(height: 15),
        Text(goalPrimary,style: mobilePrimary ),
        Text(goalSecondary,style: mobilePrimary ),
      ],
    ),
  ];
}