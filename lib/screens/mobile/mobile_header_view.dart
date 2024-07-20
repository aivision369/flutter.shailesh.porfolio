import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/strings.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';

class MobileHeaderView extends StatelessWidget {
  const MobileHeaderView({Key? key, required this.scaffoldKey})
      : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 200,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg_header.png",
              ),
              //scale: 1.0,
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: RichText(
                      text: TextSpan(
                          text: "<",
                          style: GoogleFonts.exo(
                              fontSize: 25, color: Colors.white),
                          children: [
                            TextSpan(
                                text: AppString.goDevs,
                                style: GoogleFonts.exo(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),
                            TextSpan(
                                text: "/>",
                                style: GoogleFonts.exo(
                                    fontSize: 25, color: Colors.white))
                          ]),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                    child: Image.asset(
                      "assets/images/menu.png",
                      width: 40,
                      height: 40,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                AppString.hi,
                style: GoogleFonts.exo(
                    fontSize: 13, color: Colors.green, letterSpacing: 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.title,
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
                height: 20,
              ),
              Text(
                AppString.headerMassage,
                style: GoogleFonts.exo(
                    fontSize: 15, color: Colors.grey, letterSpacing: 1),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: kPrimaryDark),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      AppString.viewMyProject,
                      style: GoogleFonts.exo(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(width: 1, color: kPrimaryDark)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      AppString.contactMe,
                      style: GoogleFonts.exo(
                          color: kPrimaryDark,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
