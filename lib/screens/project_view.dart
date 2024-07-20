import 'package:flutter/material.dart';
import 'package:shailesh_res_portfolio/strings.dart';
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
                                AppString.project,
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
                            AppString.projectDes1,
                            style: kDesStyle,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            AppString.projectDes2,
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
