import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesComponents extends StatelessWidget {
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final double heightText;
  final double width;
  final EdgeInsets margin;

  MessagesComponents(
      {Key key,
      this.title,
      this.fontWeight,
      this.fontSize,
      this.heightText = 1,
      this.width,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(title,
            style: GoogleFonts.almarai(
                fontWeight: fontWeight, fontSize: fontSize, height: heightText),
            textAlign: TextAlign.center),
        margin: margin,
        width: width);
  }
}
