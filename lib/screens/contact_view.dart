import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/strings.dart';
import 'package:shailesh_res_portfolio/untils/utils.dart';

import '../widget/nav_bar.dart';
import 'package:shailesh_res_portfolio/uniqe.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 465,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg_header.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 200,top: 60, right:200),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.contact,
                            style: kHeadingStyle,
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
                        AppString.contactDes1,
                        style: kDesStyle,
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
                            AppString.mobileNo,
                            style: kDesStyle,
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
                            AppString.mobileNo,
                            style: kDesStyle,
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
                            AppString.emailId,
                            style: kDesStyle,
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
                    ],
                  )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 350,
                        width: 350,
                        child: Image.asset(
                          "assets/images/il_contact.png",
                        ),
                        // Image.asset("assets/images/il_first_fold.png",
                        //   scale: 1,)
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                              text: "<",
                              style: GoogleFonts.exo(fontSize: 20, color: Colors.white),
                              children: [
                                TextSpan(
                                    text: AppString.goDevs,
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
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Align(
                        alignment:Alignment.center,
                        child: Text(
                          AppString.atGoDevs,
                          style: GoogleFonts.exo(
                              fontSize: 13,
                              color: kGreyText,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: RichText(
                          text: TextSpan(
                              text: AppString.developedBy,
                              style: GoogleFonts.exo(fontSize: 12, color: kGreyText),
                              children: [
                                TextSpan(
                                    text: AppString.aiVision,
                                    style: GoogleFonts.exo(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: kGreenText)),
                              ]),
                        ),
                      ),
                    ),
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
