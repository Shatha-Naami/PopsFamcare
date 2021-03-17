import 'package:famcare/Utils/StaticData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonComponent extends StatelessWidget {
  final String title;
  final Color color;
  final Color background;
  final double size;
  final Function onTapped;

  ButtonComponent(
      {Key key,
      this.onTapped,
      this.title,
      this.color,
      this.size,
      this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: widthScreen,
        color: background,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 22, bottom: 22),
        child: Text(
          title,
          style: GoogleFonts.almarai(
              fontWeight: FontWeight.w800, color: color, fontSize: size),
        ),
      ),
      onTap: onTapped,
    );
  }
}
