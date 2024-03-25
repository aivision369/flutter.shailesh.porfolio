import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/model/project_item_model.dart';

import '../uniqe.dart';

class ProjectItemWidget extends StatefulWidget {
  ProjectItemWidget(
      {Key? key,
      required this.index,
      required this.isHorizontalList,
      this.onProjectSelected})
      : super(key: key);

  final int index;
  final bool isHorizontalList;
  Function(int)? onProjectSelected;

  @override
  State<ProjectItemWidget> createState() => _ProjectItemWidgetState();
}

class _ProjectItemWidgetState extends State<ProjectItemWidget> {
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
            SizedBox(
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
                              border:
                                  Border.all(width: 1.5, color: kPrimaryDark)),
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
