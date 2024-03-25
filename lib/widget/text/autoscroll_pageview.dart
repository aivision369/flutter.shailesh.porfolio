import 'dart:async';

import 'package:flutter/material.dart';

class AutoScrollPageView extends StatefulWidget {
  final List<Widget> pages;

  AutoScrollPageView({required this.pages});

  @override
  _AutoScrollPageViewState createState() => _AutoScrollPageViewState();

  void restartAutoScroll() {
    createState().restartAutoScroll();
  }
}

class _AutoScrollPageViewState extends State<AutoScrollPageView> {
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    print("initState() is called");
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer!.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPageIndex < widget.pages.length - 1) {
        _currentPageIndex++;
      } else {
        _currentPageIndex = 0;
      }
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void restartAutoScroll() {
    //_timer!.cancel();
    //_pageController.dispose();
    _currentPageIndex = 0;
    /*Future.delayed(Duration(seconds: 2)).then((_) {
      _startAutoScroll();
    });*/
    _startAutoScroll();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: widget.pages.length,
      itemBuilder: (BuildContext context, int index) {
        return widget.pages[index];
      },
      onPageChanged: (int index) {
        setState(() {
          _currentPageIndex = index;
        });
      },
    );
  }
}
