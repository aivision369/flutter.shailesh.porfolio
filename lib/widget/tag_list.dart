import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shailesh_res_portfolio/uniqe.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key, required this.list}) : super(key: key);
  final List list;

  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Wrap(
            alignment: WrapAlignment.start,
            children: widget.list
                .map((name) => tagChip(
                      tagName: name,
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
  bool _isHovered = false;
  Color _borderColor = kBorderColor;

  Widget tagChip({tagName}) {

    return InkWell(
      /*onHover: (isHovered) {
        setState(() {
          _isHovered = isHovered;
          print("InWell onHover is called : _isHovered : $_isHovered");
          _borderColor =
              _borderColor == kBorderColor ? kPrimaryDark : kBorderColor;
        });
      },
      onTap:(){},*/
      child: Container(
        padding: EdgeInsets.only(right: 3, top: 3, bottom: 3),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kPrimaryDark),
            borderRadius: BorderRadius.circular(6.0),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 8.0,
          ),
          child: Text(
            tagName,
            style: GoogleFonts.exo(
              letterSpacing: 0.5,
              fontSize: 11,
              color: /*_isHovered ? Colors.green : */Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
