import 'package:flutter/material.dart';
import 'package:shailesh_res_portfolio/model/project_item_model.dart';
import 'package:shailesh_res_portfolio/untils/app_scroll_behavior.dart';

import '../uniqe.dart';
import 'project_item_widget.dart';

class ProjectSlider extends StatefulWidget {
  const ProjectSlider({Key? key}) : super(key: key);

  @override
  State<ProjectSlider> createState() => _ProjectSliderState();
}

class _ProjectSliderState extends State<ProjectSlider> {
  int currentPage = 0;
  late Function(String) onProjectSelected;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.center,
          colors: [
            Colors.transparent,
            Color(0xff2f3542), // Apply the blur effect here
          ],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 224,
              child: PageView.builder(
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.5),
                  itemCount: ProjectItemModel.projectList.length,
                  onPageChanged: (page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  scrollBehavior: AppScrollBehavior(),
                  itemBuilder: (context, index) {
                    return ProjectItemWidget(
                        index: index,
                        isHorizontalList: true,
                        projectUrl:
                            ProjectItemModel.projectList[index].projectUrl);
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
    );
  }
}
