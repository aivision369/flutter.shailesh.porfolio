import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/model/project_item_model.dart';
import 'package:shailesh_res_portfolio/untils/app_scroll_behavior.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';

class MobileProjectView extends StatefulWidget {
  const MobileProjectView({Key? key}) : super(key: key);

  @override
  State<MobileProjectView> createState() => _MobileProjectViewState();
}

class _MobileProjectViewState extends State<MobileProjectView> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryBgGrey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Projects",
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
                    height: 15,
                  ),
                  Text(
                    'There are some of the projects that I have developer during work',
                    style: kDesStyleMob,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "A foreword thinking to building, integrating, testing and keep supporting android app for mobile and tablet devices. Conceptualizing app solution with the latest technology, design theory and large does of code creativity",
                    style: kDesStyleMob,
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 224,
                    child: PageView.builder(
                        controller: PageController(
                          initialPage: 1,
                          viewportFraction: 0.8,
                        ),
                        //PageController(initialPage: 0, viewportFraction: 0.8),
                        itemCount: ProjectItemModel.projectList.length,
                        onPageChanged: (page) {
                          setState(() {
                            currentPage = page;
                          });
                        },
                        scrollBehavior: AppScrollBehavior(),
                        itemBuilder: (context, index) {
                          return projectItemWidget(
                              context, ProjectItemModel.projectList[index]);
                        }),
                  ),
                  Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          ProjectItemModel.projectList.length,
                          (index) => AnimatedContainer(
                                duration: const Duration(microseconds: 600),
                                margin: const EdgeInsets.only(right: 5),
                                height: 5,
                                width: currentPage == index ? 20 : 10,
                                decoration: BoxDecoration(
                                  color: currentPage == index
                                      ? kPrimaryColor
                                      : const Color(0xff2f3542),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              )),
                    ),
                  )
                ],
              ),
            ),
            //ProjectSlider()
          ],
        ),
      ),
    );
  }

  final PageController _pageController = PageController(
    initialPage: 1, // Start from the middle page
    viewportFraction: 0.8, // Set the viewportFraction
  );

  Widget projectItemWidget(
      BuildContext context, ProjectItemModel projectModel) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: const Color(0xff2f3542),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: const Color(0xff5c616e))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectModel.prjName,
              style: GoogleFonts.exo(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              projectModel.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.exo(
                fontSize: 12,
                color: kGreyText,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var item in projectModel.language)
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border:
                                  Border.all(width: 1.5, color: kPrimaryDark)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: Text(
                                item,
                                style: GoogleFonts.exo(
                                    color: kPrimaryDark,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                //margin: EdgeInsets.symmetric(horizontal: 20),
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: kPrimaryDark),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "View Projects",
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
          ],
        ),
      ),
    );
  }
}
