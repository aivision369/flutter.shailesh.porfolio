import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/core/responsive_layout.dart';
import 'package:shailesh_res_portfolio/uniqe.dart';
import 'package:shailesh_res_portfolio/screens/about_view.dart';
import 'package:shailesh_res_portfolio/screens/contact_view.dart';
import 'package:shailesh_res_portfolio/screens/header_view.dart';
import 'package:shailesh_res_portfolio/screens/project_view.dart';
import 'package:shailesh_res_portfolio/screens/skills_view.dart';

import 'mobile/mobile_about_view.dart';
import 'mobile/mobile_contact_view.dart';
import 'mobile/mobile_header_view.dart';
import 'mobile/mobile_project_view.dart';
import 'mobile/mobile_skills_view.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final ScrollController _scrollControllerParent = ScrollController();
var mobileViewKey = GlobalKey();
var headerKey = GlobalKey();
var aboutKey = GlobalKey();
var skillKey = GlobalKey();
var projectKey = GlobalKey();
var contactKey = GlobalKey();
bool _isVisible = true;

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _scrollControllerParent.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollControllerParent.removeListener(_scrollListener);
    _scrollControllerParent.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollControllerParent.position.userScrollDirection ==
        ScrollDirection.reverse) {
      setState(() {
        _isVisible = false;
      });
    } else if (_scrollControllerParent.position.userScrollDirection ==
        ScrollDirection.forward) {
      setState(() {
        _isVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xff0A192F),
      endDrawer: Drawer(
        child: Container(
          color: kPrimaryBgGrey,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: kPrimaryDark,
                ),
                child: RichText(
                  text: TextSpan(
                      text: "Hi!",
                      style: GoogleFonts.exo(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                            text: "\nShailesh K Limbadiya",
                            style: GoogleFonts.exo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        TextSpan(
                            text: "\n\nLet\'s develop your dream",
                            style: GoogleFonts.exo(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))
                      ]),
                ),
              ),
              ListTile(
                /*leading: Icon(
                  Icons.account_box_outlined,
                ),*/
                title: Text(
                  StrRes.menuAboutMe,
                  style: kDrawerStyle,
                ),
                onTap: () {
                  _scrollToPosition(aboutKey);
                  notifySetState();
                },
              ),
              ListTile(
                title: Text(
                  StrRes.menuSkill,
                  style: kDrawerStyle,
                ),
                onTap: () {
                  _scrollToPosition(skillKey);
                  notifySetState();
                },
              ),
              ListTile(
                title: Text(
                  StrRes.menuProject,
                  style: kDrawerStyle,
                ),
                onTap: () {
                  _scrollToPosition(projectKey);
                  notifySetState();
                },
              ),
              ListTile(
                title: Text(
                  StrRes.menuContact,
                  style: kDrawerStyle,
                ),
                onTap: () {
                  _scrollToPosition(contactKey);
                  notifySetState();
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
              controller: _scrollControllerParent,
              child: ResponsiveLayout.isSmallScreen(context)
                  ? MobileView()
                  : ResponsiveLayout.isMediumScreen(context)
                      ? MobileView() //tablet view
                      : LargeView(
                          notifyParent: () {
                            setState(() {});
                          },
                        ) //web page
              ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: AnimatedOpacity(
                opacity: !_isVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 300),
                child: FloatingActionButton(
                  backgroundColor: kPrimaryDark,
                  onPressed: () {
                    setState(() {
                      _isVisible = true;
                    });
                    _scrollToPosition(headerKey);
                    // Add onPressed action here
                    print('FloatingActionButton pressed');
                  },
                  child: const Icon(
                    Icons.arrow_upward,
                    size: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void notifySetState() {
    Navigator.pop(context);
    _isVisible = false;
    setState(() {});
  }
}

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileHeaderView(
          key: headerKey,
          scaffoldKey: _scaffoldKey,
        ),
        MobileAboutView(
          key: aboutKey,
        ),
        MobileSkillsView(
          key: skillKey,
        ),
        MobileProjectView(
          key: projectKey,
        ),
        MobileContactView(key: contactKey)
      ],
    );
  }
}

class LargeView extends StatefulWidget {
  const LargeView({Key? key, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;

  @override
  State<LargeView> createState() => _LargeViewState();
}

class _LargeViewState extends State<LargeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(
          key: headerKey,
          function: (value) {
            setState(() {
              //_isVisible = false; //for hide
              if (value == StrRes.menuAboutMe) {
                _scrollToPosition(aboutKey);
              } else if (value == StrRes.menuSkill) {
                _scrollToPosition(skillKey);
              } else if (value == StrRes.menuProject) {
                _scrollToPosition(projectKey);
              } else if (value == StrRes.menuContact) {
                _scrollToPosition(contactKey);
              }
              //for show bottom up arrow button
              _isVisible = false;
              widget.notifyParent();
            });
          },
        ),
        AboutView(
          key: aboutKey,
        ),
        SkillsView(
          key: skillKey,
        ),
        ProjectView(
          key: projectKey,
        ),
        ContactView(
          key: contactKey,
        ),
      ],
    );
  }
}

void _scrollToPosition(GlobalKey scrollKey) {
  final RenderBox renderBox =
      scrollKey.currentContext!.findRenderObject() as RenderBox;
  final offset = renderBox.localToGlobal(Offset.zero);
  _scrollControllerParent.animateTo(
    offset.dy,
    duration: const Duration(milliseconds: 700),
    curve: Curves.easeInOut,
  );
}
