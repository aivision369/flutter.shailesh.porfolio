import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../uniqe.dart';

class ProjectImageSlider extends StatefulWidget {
  const ProjectImageSlider({Key? key, required this.imagePaths})
      : super(key: key);

  final List<dynamic> imagePaths;

  @override
  State<ProjectImageSlider> createState() => _ProjectImageSliderState();
}

class _ProjectImageSliderState extends State<ProjectImageSlider> {
  int _currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onArrowClick(bool isNext) {
    if (isNext) {
      if (_currentPage < widget.imagePaths.length - 1) {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    } else {
      if (_currentPage > 0) {
        _currentPage--;
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: widget.imagePaths.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(widget.imagePaths[index],
                      fit: BoxFit.contain),
                );
              },
            ),
          ),
          // Add other widgets below the Expanded widget if needed
          Container(
            child: widget.imagePaths.length > 1
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 30,
                        disabledColor: Colors.transparent,
                        icon: Image.asset(
                          "assets/images/left_arrow.png",
                        ),
                        onPressed: () => _onArrowClick(false),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          '${_currentPage + 1} / ${widget.imagePaths.length}',
                          style: GoogleFonts.exo(
                              color: kGreyText,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ),
                      IconButton(
                        iconSize: 30,
                        icon: Image.asset(
                          "assets/images/right_arrow.png",
                        ),
                        onPressed: () => _onArrowClick(true),
                      ),
                    ],
                  )
                : SizedBox(),
          )

          /*Positioned(
            left: 20,
            child: IconButton(
              iconSize: 35,
              disabledColor: Colors.transparent,
              icon: Image.asset("assets/images/left_arrow.png",),
              onPressed: () => _onArrowClick(false),
            ),
          ),
          Positioned(
            right: 20,
            child: IconButton(
              iconSize: 35,
              icon: Image.asset("assets/images/right_arrow.png",
              ),
              onPressed: () => _onArrowClick(true),
            ),
          ),*/
        ],
      ),
    );
  }
}
