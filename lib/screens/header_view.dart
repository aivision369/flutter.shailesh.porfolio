import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/strings.dart';
import 'package:shailesh_res_portfolio/untils/utils.dart';

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
              NavigationBar(
                function: (value) {
                  function(value);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, ${getGreeting()}",
                        style: GoogleFonts.exo(
                            fontSize: 13,
                            color: Colors.green,
                            letterSpacing: 1),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.title,
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
                        AppString.headerMassage,
                        style: GoogleFonts.exo(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => function(AppString.menuProject),
                            child: Container(
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                      width: 1, color: kPrimaryDark)),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    AppString.viewMyProject,
                                    style: GoogleFonts.exo(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Utils.launchWebPage(StrRes.resume);
                              //function(AppString.menuContact);
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: kPrimaryDark,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    AppString.resume,
                                    style: GoogleFonts.exo(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
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

  String getGreeting() {
    var hours = DateTime.now().hour;
    if (hours < 12) {
      return "Good morning !";
    } else if (hours < 18) {
      return "Good afternoon !";
    } else {
      return "Good evening !";
    }
  }
}
