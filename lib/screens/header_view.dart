import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/nav_bar.dart';
import 'package:shailesh_res_portfolio/uniqe.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key, required this.function}) : super(key: key);
  final Function function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg_header.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: kPageLeftRightPadding,
          child: Column(
            children: [
              NavigationBar(function: (value){
                function(value);
              },),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi! there",
                        style: GoogleFonts.exo(
                            fontSize: 13,
                            color: Colors.green,
                            letterSpacing: 1
                        )/*TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                            letterSpacing: 1)*/,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shailesh Limbadiya",
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
                        "Let's developer your next \nsuccessful product together!",
                        style: GoogleFonts.exo(
                            fontSize: 15, color: Colors.grey,),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap:()=>function(StrRes.menuProject),
                            child: Container(
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: kPrimaryDark),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "View My Projects",
                                    style: GoogleFonts.exo(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          InkWell(
                            onTap:()=>function(StrRes.menuContact),
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(width: 1,color: kPrimaryDark)),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Contact Me",
                                    style: GoogleFonts.exo(
                                        color: kPrimaryDark,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
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
                          "assets/images/il_first_fold.png",
                        ),
                        // Image.asset("assets/images/il_first_fold.png",
                        //   scale: 1,)
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
