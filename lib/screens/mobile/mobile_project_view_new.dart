import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/model/project_item_model.dart';
import 'package:shailesh_res_portfolio/untils/app_scroll_behavior.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';
import 'package:shailesh_res_portfolio/untils/utils.dart';

class MobileProjectViewNew extends StatefulWidget {
  const MobileProjectViewNew({Key? key}) : super(key: key);

  @override
  State<MobileProjectViewNew> createState() => _MobileProjectViewNewState();
}

class _MobileProjectViewNewState extends State<MobileProjectViewNew> {
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
                    height: 480,
                    //color: Colors.red,
                    padding: const EdgeInsets.all(5.0),
                    child: PageView.builder(
                        controller: PageController(
                          initialPage: 0,
                          //viewportFraction: 0.8,
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
                          return projectItemWidgetNew(
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

  Widget projectItemWidgetNew(
      BuildContext context, ProjectItemModel projectModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,top: 20.0,right: 10,bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              color: const Color(0xff2f3542),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.green),
              // Replace with kGreenText if defined
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.5),
                  // Replace with kGreenText if defined
                  blurRadius: 15.0,
                  spreadRadius: 5.0,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(projectModel.mobileThumb),
                    // Replace with your image URL
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width - 40,
                  color: Colors.black.withOpacity(0.1), // 10% black overlay
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            projectModel.prjName,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
         /* Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('Button'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1.0, color: kPrimaryDark),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: kPrimaryDark)
                  ),
                ),
              ),
              SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {},
                child: Text('Button'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1.0, color: kPrimaryDark),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: kPrimaryDark)
                  ),
                ),
              ),
            ],
          ),*/
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
                            border: Border.all(
                                width: 1.5, color: kPrimaryDark)),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
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
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
              ],
            ),
          ),

        ],
      ),
    );
  }

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
                  child: InkWell(
                    onTap: () {
                      Utils.launchWebPage(projectModel.projectUrl);
                    },
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
            ),
          ],
        ),
      ),
    );
  }
}
