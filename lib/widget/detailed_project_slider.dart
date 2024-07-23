import 'package:flutter/material.dart';
import 'package:shailesh_res_portfolio/model/project_item_model.dart';
import 'package:shailesh_res_portfolio/untils/app_scroll_behavior.dart';

import '../uniqe.dart';
import 'project_detail_card_widget.dart';
import 'project_item_widget.dart';

class DetailedProjectSlider extends StatefulWidget {
  const DetailedProjectSlider({Key? key}) : super(key: key);

  @override
  State<DetailedProjectSlider> createState() => _DetailedProjectSliderState();
}

class _DetailedProjectSliderState extends State<DetailedProjectSlider> {
  int currentPage = 0;
  late Function(String) onProjectSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 450,
            child: PageView.builder(
                controller:
                    PageController(initialPage: 0, viewportFraction: 0.9),
                itemCount: ProjectItemModel.projectList.length,
                onPageChanged: (page) {
                  setState(() {
                    currentPage = page;
                  });
                },
                scrollBehavior: AppScrollBehavior(),
                itemBuilder: (context, index) {
                  return ProjectDetailCardWidget(
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
    );
  }
}
