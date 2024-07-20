import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/screens/widget/language_widget.dart';
import 'package:shailesh_res_portfolio/strings.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';
import 'package:shailesh_res_portfolio/widget/tag_list.dart';

class MobileSkillsView extends StatelessWidget {
  const MobileSkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg_skill_section.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Skills",
                    style: kHeadingStyleMob,
                  ),
                  Image.asset(
                    "assets/images/sparkle.png",
                    height: 20,
                    width: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'There are some of the skills I know to develop projects based on its requirement',
                textAlign: TextAlign.center,
                style: kDesStyleMob,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LanguageWidget(name: AppString.java, image: StrImg.javaImg),
                  LanguageWidget(name: AppString.kotlin, image: StrImg.kotlinImg),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              LanguageWidget(name: AppString.dart, image: StrImg.dartImg),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Work's With",
                    style: GoogleFonts.exo(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1),
                  ),
                  Image.asset(
                    "assets/images/sparkle.png",
                    height: 20,
                    width: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TagList(list: toolsList,)
            ],
          ),
        ),
      ),
    );
  }
}
