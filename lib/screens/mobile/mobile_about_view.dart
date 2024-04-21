import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';
import 'package:shailesh_res_portfolio/untils/utils.dart';

class MobileAboutView extends StatelessWidget {
  const MobileAboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kPrimaryBgGrey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kPrimaryDark, width: 2)),
              child: Padding(
                padding: EdgeInsets.all(2),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Shailesh Limbadiya",
              style: GoogleFonts.exo(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kGreenText,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Mobile & Web Developer",
              style:
                  GoogleFonts.exo(fontSize: 11, color: kGreyText, letterSpacing: 1),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap:(){
                    Utils.launchWebPage(StrRes.github);
                  },
                  child: Image.asset(
                    "assets/images/github_logo.png",
                    width: 25,
                    height: 25,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap:(){
                    Utils.launchWebPage(StrRes.linkedIn);
                  },
                  child: Image.asset(
                    "assets/images/linkedin_logo.png",
                    width: 25,
                    height: 25,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap:(){
                    Utils.launchWebPage(StrRes.stackOverflow);
                  },
                  child: Image.asset(
                    "assets/images/stack_overflow_logo.png",
                    width: 25,
                    height: 25,
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: kHeadingStyleMob,
                      ),
                      Image.asset(
                        "assets/images/sparkle.png",
                        height: 20,
                        width: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/hand_waving.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Hi, how's it going?",
                        style: kDesStyleMob,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Now I am going to tell you a little about myself',
                    style: kDesStyleMob,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'My name is ',
                        style: kDesStyleMob,
                        children: [
                          TextSpan(
                            text: "Shailesh",
                            style: kDesStyleMob,
                          ),
                          TextSpan(
                            text:
                            ", and I am passionate about technology and products, and mainly, I love what I do",
                            style: kDesStyleMob,
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'I participate in the entire process of creating and developing digital products, from creating wireframes to high-fidelity projects ready to be send to the development team.',
                    style: kDesStyleMob,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "I have been working in this area for over 8 years",
                    style: kDesStyleMob,
                  )
                ],
              ),
            )
            /*SizedBox(
              height: 15,
            ),
            Text(
              "Shailesh Limbadiya",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kGreenText,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Mobile & Web Developer",
              style: TextStyle(
                  fontSize: 11,
                  color: kGreyText,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/github_logo.png",
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  "assets/images/linkedin_logo.png",
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  "assets/images/youtube_logo.png",
                  width: 25,
                  height: 25,
                )
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
