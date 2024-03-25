import 'package:flutter/material.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';
import 'package:shailesh_res_portfolio/widget/tag_list.dart';

import 'widget/language_widget.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg_skill_section.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: kPaddingAll,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StrRes.skills,
                    style: kHeadingStyle,
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
                style: kDesStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LanguageWidget(name: StrRes.java, image:StrImg.javaImg),
                      LanguageWidget(name:StrRes.kotlin, image:StrImg.kotlinImg),
                      LanguageWidget(name:StrRes.dart, image:StrImg.dartImg),
                    ],
                  ),
                  SizedBox(width:50),
                  Flexible(child: TagList(list: toolsList,),

                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget languageWidget(String lngName, String imagePath) {
  return Container(
    width: 100,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        color: const Color(0xff454b58),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: const Color(0xff5c616e))),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 70,
            color: Colors.white70,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            lngName,
            textAlign: TextAlign.center,
            style: kDesStyle,
          )
        ],
      ),
    ),
  );
}
