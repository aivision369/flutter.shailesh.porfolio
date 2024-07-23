import 'package:flutter/material.dart';
import 'package:shailesh_res_portfolio/strings.dart';
import 'package:shailesh_res_portfolio/widget/detailed_project_slider.dart';
import 'package:shailesh_res_portfolio/widget/project_slider.dart';

import 'package:shailesh_res_portfolio/uniqe.dart';

class DetailedProjectView extends StatelessWidget {
  const DetailedProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryBgGrey,
      child: Padding(
        padding: kPaddingAll,
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(
              height: 10,
            ),
            Text(
              AppString.projectDes3,
              textAlign: TextAlign.center,
              style: kDesStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            DetailedProjectSlider(),
          ],
        ),
      ),
    );
  }
}
