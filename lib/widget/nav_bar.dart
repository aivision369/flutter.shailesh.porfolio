import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../uniqe.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key, required this.function}) : super(key: key);

  final Function function;
  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  final topMenu = [StrRes.menuAboutMe, StrRes.menuSkill, StrRes.menuProject, StrRes.menuContact];

  List<Widget> topMenuItem() {
    return topMenu.map((menuName) {
      return GestureDetector (
        onTap: (){
          widget.function(menuName);
        },
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              menuName,
              style: GoogleFonts.exo(
                color: Colors.white,
                fontSize: 13,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: RichText(
              text: TextSpan(
                  text: "<",
                  style:
                  GoogleFonts.exo(
                      fontSize: 30, color: Colors.white,
                      letterSpacing: 1
                  ),
                //TextStyle(fontSize: 30, color: Colors.white),
                  children: [
                    TextSpan(
                        text: "GoDevs",
                        style: GoogleFonts.exo(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    TextSpan(
                        text: "/>",
                        style: GoogleFonts.exo(fontSize: 30, color: Colors.white))
                  ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [...topMenuItem()],
          )
        ],
      ),
    );
  }
}
