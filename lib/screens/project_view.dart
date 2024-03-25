import 'package:flutter/material.dart';
import 'package:shailesh_res_portfolio/widget/project_slider.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key}) : super(key: key);

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
                    flex: 4,
                    child: Container(
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
                            height: 15,
                          ),
                          Text(
                            'There are some of the projects that I have developer during work',
                            style: kDesStyle,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "A foreword thinking to building, integrating, testing and keep supporting android app for mobile and tablet devices. Conceptualizing app solution with the latest technology, design theory and large does of code creativity",
                            style: kDesStyle,
                          ),
                        ],
                      ),
                    )),
                Flexible(
                  flex: 6,
                  child: ProjectSlider(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
