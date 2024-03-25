import 'package:flutter/material.dart';

import 'autoscroll_pageview.dart';
List<Widget> _pages = [
  Text("Hello1 "),
  Text("Hello2 "),
  Text("Hello3 "),
  Text("Hello4 "),
  Text("Hello5 "),
  Text("Hello6 "),
];

class WidgetA extends StatefulWidget {
  @override
  _WidgetAState createState() => _WidgetAState();
}

class _WidgetAState extends State<WidgetA> {
  AutoScrollPageView? _autoScrollPageView;

  @override
  void initState() {
    super.initState();
    // Initialize AutoScrollPageView
    _autoScrollPageView = AutoScrollPageView(
      pages: _pages,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Your other widgets
        ElevatedButton(
          onPressed: () {
            // Call _restartAutoScroll when button is pressed
            setState(() {
              _autoScrollPageView?.restartAutoScroll();

            });
          },
          child: Text('Restart Auto Scroll'),
        ),
        Expanded(
          child: _autoScrollPageView!,
        ),
      ],
    );
  }
}
