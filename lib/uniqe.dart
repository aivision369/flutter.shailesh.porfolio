import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPageLeftRightPadding = EdgeInsets.symmetric(horizontal: 200);
const kPaddingAll = EdgeInsets.symmetric(horizontal: 200, vertical: 50);

const kPrimaryColor = Color(0xff23AA49);
const kPrimaryDark = Color(0xff25AA5C);
const kPrimaryLight = Color(0xff82E6AB);

const kPrimaryBgGrey = Color(0xff454b58);

const kGreyText = Color(0xffe7e8eb);
const kGreenText = Color(0xff2ed573);
const kBorderColor = Color(0xff5c616e);

// Global styles which is used in the project
final kHeadingStyle = GoogleFonts.exo(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 1);

final kDrawerStyle = GoogleFonts.exo(
  fontSize: 13,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

final kHeadingStyleMob = GoogleFonts.exo(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 1);

final kDesStyle =
    GoogleFonts.exo(fontSize: 12, color: kGreyText, letterSpacing: 0.5);

final kDesStyleMob =
    GoogleFonts.exo(fontSize: 12, color: kGreyText, letterSpacing: 0.5);

//final kDescriptionStyle = GoogleFonts.exo(fontSize: 15, color: Colors.grey);

class StrRes {
  static const stackOverflow =
      "https://stackoverflow.com/users/5815673/aivision";
  static const github = "https://github.com/aivision369/";
  static const linkedIn =
      "https://www.linkedin.com/in/shailesh-limbadiya-053166110/";

  static const resume =
      "https://drive.google.com/file/d/1m8t2Fzr-PTkBck8n9tS-gN2WSmbhMmM5/view";
}

class StrImg {
  static const javaImg = "assets/images/ic_java.png";
  static const kotlinImg = "assets/images/ic_kotlin.png";
  static const dartImg = "assets/images/ic_flutter.png";
}

final List<String> toolsList = [
  "MVC",
  "MVP",
  "MVVM",
  "Retrofit",
  "Volley",
  "Asynchronous HttpClient",
  "Firebase FCM",
  "One Single",
  "ButterKnife",
  "AndroidData Binding",
  "Google In-app",
  "Paytm",
  "CCAvenue",
  "Netscape",
  "Stripe",
  "GitLab",
  "Github",
  "Bitbucket",
  "Google Analytics",
  "Fabric",
  "Testfairy",
  "Postman",
  "RestFul API",
  "Admob",
];
