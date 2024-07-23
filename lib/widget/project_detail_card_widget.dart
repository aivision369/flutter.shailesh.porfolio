import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/model/project_item_model.dart';
import 'package:shailesh_res_portfolio/strings.dart';
import 'package:shailesh_res_portfolio/untils/utils.dart';

import '../uniqe.dart';
import 'dart:html' as html;
import 'dart:js' as js;

import 'project_image_slider.dart';

class ProjectDetailCardWidget extends StatefulWidget {
  ProjectDetailCardWidget(
      {Key? key,
      required this.index,
      required this.isHorizontalList,
      required this.projectUrl,
      this.onProjectSelected})
      : super(key: key);

  final int index;
  final bool isHorizontalList;
  final String projectUrl;
  Function(int)? onProjectSelected;

  @override
  State<ProjectDetailCardWidget> createState() =>
      _ProjectDetailCardWidgetState();
}

class _ProjectDetailCardWidgetState extends State<ProjectDetailCardWidget> {
  late ProjectItemModel projectModel;

  @override
  void initState() {
    super.initState();
    projectModel = ProjectItemModel.projectList[widget.index];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.isHorizontalList
          ? const EdgeInsets.symmetric(horizontal: 10)
          : const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xff2f3542),
          gradient: LinearGradient(
              colors: [const Color(0xff5c616e), Colors.black26],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0, color: Colors.transparent)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    projectModel.prjName,
                    style: GoogleFonts.exo(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    projectModel.description,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.exo(
                      fontSize: 12,
                      color: kGreyText,
                    ),
                  ),
                  SizedBox(
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
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      if (widget.isHorizontalList) {
                        //This is used to navigate to next screen to show complete detail about project
                        // Navigator.pushNamed(context, ProjectDashboardScreen.routName,
                        //     arguments: widget.index);
                      } else {
                        // that means this Widget is called from ProjectDashboardScreen
                        // so we need to return project name using "onProjectSelected" Function
                        if (widget.onProjectSelected != null) {
                          widget.onProjectSelected!(widget.index);
                        } else {
                          print(
                              "NullPointer Exception : onProjectSelected() is not initialized. Need to initialize before its use");
                        }
                      }
                    },
                    child: InkWell(
                      onTap: () {
                        if (widget.projectUrl.isNotEmpty)
                          Utils.launchWebPage(widget.projectUrl);
                      },
                      child: Container(
                        //margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 35,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: kPrimaryDark),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              AppString.viewProjects,
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
            Flexible(
                flex: 7,
                child: ProjectImageSlider(
                  imagePaths: projectModel.prjImages,
                )

                /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: Image.asset("assets/images/left_arrow.png",),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/travel_home_1.png")),
                    ),
                    SizedBox(
                        width: 35,
                        height: 35,
                        child: Image.asset("assets/images/right_arrow.png",))
                  ],
                )*/
                ),
          ],
        ),
      ),
    );
  }
}
