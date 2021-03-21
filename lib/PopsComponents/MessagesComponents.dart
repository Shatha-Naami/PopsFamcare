import 'package:flutter/material.dart';

class MessagesComponents extends StatelessWidget {
  final String title;
  final String fontFamily;
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
      this.margin,
      this.fontFamily = 'Famtree-Regular'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          height: heightText,
          fontFamily: fontFamily,
        ),
        textAlign: TextAlign.center,
      ),
      margin: margin,
      width: width,
    );
  }
}
