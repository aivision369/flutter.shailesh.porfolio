import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/strings.dart';
import 'package:shailesh_res_portfolio/untils/utils.dart';

import '../widget/nav_bar.dart';
import 'package:shailesh_res_portfolio/uniqe.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> with TickerProviderStateMixin{
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryBgGrey,
      child: Padding(
        padding: kPaddingAll,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onHover: (isHovered) {
                              setState(() {
                                _isHovered = isHovered;
                                print(
                                    "InWell onHover is called : _isHovered : $_isHovered");
                                
                              });
                            },
                            onTap: () {
                              print("InWell onTap is called");
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                  Border.all(color: kPrimaryDark, width: 2)),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: AnimatedContainer(
                                  transformAlignment: Alignment.center,
                                  duration: Duration(microseconds: 2000),
                                  transform: _isHovered ? (Matrix4.identity()..scale(1.2)) : Matrix4.identity(),
                                  child: CircleAvatar(
                                    radius: 70,
                                    backgroundImage:
                                    AssetImage("assets/images/profile.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            AppString.title,
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
                            AppString.mobileWebDev,
                            style: GoogleFonts.exo(
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
                      ),
                    )),
                Expanded(
                  flex: 7,
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppString.aboutMe,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/hand_waving.png",
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                AppString.aboutMeDes1,
                                style: kDesStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            AppString.aboutMeDes2,
                            style: kDesStyle,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          RichText(
                            text: TextSpan(
                                text: AppString.aboutMeDes3,
                                style:
                                kDesStyle,
                                children: [

                                  TextSpan(
                                    text:
                                    AppString.aboutMeDes4,
                                    style: kDesStyle,
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            AppString.aboutMeDes5,
                            style: kDesStyle,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            AppString.aboutMeDes6,
                            style: kDesStyle,
                          )
                          // Add more widgets here
                        ]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
