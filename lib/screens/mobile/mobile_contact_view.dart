import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';
import 'package:shailesh_res_portfolio/untils/utils.dart';

class MobileContactView extends StatelessWidget {
  const MobileContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg_header.png",
              ),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact",
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
              Text(
                "Feel free to get in touch, it will be great pleasure\nto be able to help you with your work. contact me know",
                style: kDesStyleMob,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/phone.png",
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "+91 769-8861-788",
                    style: kDesStyleMob,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/whatsapp_logo.png",
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "+91 769-8861-788",
                    style: kDesStyleMob,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/envelope.png",
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "limbadiya.sk@gmail.com",
                    style: kDesStyleMob,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
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
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: RichText(
                      text: TextSpan(
                          text: "<",
                          style: GoogleFonts.exo(fontSize: 20, color: Colors.white),
                          children: [
                            TextSpan(
                                text: "GoDevs",
                                style: GoogleFonts.exo(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),
                            TextSpan(
                                text: "/>",
                                style: GoogleFonts.exo(
                                    fontSize: 20, color: Colors.white))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "@ GoDev 2024",
                    style: GoogleFonts.exo(
                        fontSize: 13,
                        color: kGreyText,
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Developed By ",
                        style: GoogleFonts.exo(fontSize: 12, color: kGreyText),
                        children: [
                          TextSpan(
                              text: " Ai Vision",
                              style: GoogleFonts.exo(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: kGreenText)),
                        ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
