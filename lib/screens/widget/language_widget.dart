import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../uniqe.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({Key? key, required this.name, required this.image})
      : super(key: key);

  final String name;
  final String image;

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  bool _isHovered = false;
  Color _borderColor = kBorderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (isHovered) {
        setState(() {
          _isHovered = isHovered;
          print("InWell onHover is called : _isHovered : $_isHovered");
          _borderColor =
              _borderColor == kBorderColor ? kPrimaryDark : kBorderColor;
        });
      },
      onTap: () {
        print("InWell onTap is called");
      },
      child: Stack(
        children: [
          Container(
            width: 100,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: const Color(0xff454b58),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: _borderColor)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    widget.image,
                    width: 50,
                    height: 70,
                    color: _isHovered ? kPrimaryDark : Colors.white70,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.exo(
                        fontSize: 12,
                        color: _isHovered ? kPrimaryDark : kGreyText,
                        letterSpacing: 0.5),
                  )
                ],
              ),
            ),
          ),
          /*Positioned(
            bottom: 0,
            child: AnimatedContainer(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              duration: Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
              width: 100,
              // Set your container width
              height: _isHovered ? 200 : 0,
              color: Colors.green.withOpacity(0.5),
            ),
          ),*/
        ],
      ),
    );
  }
}
