import 'package:flutter/material.dart';

class FamMessagesInfo extends StatelessWidget {
  final String title;
  final double width;
  final EdgeInsets margin;
  final TextStyle style;

  FamMessagesInfo({Key key, this.title, this.width, this.margin, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: style,
        textAlign: TextAlign.center,
      ),
      margin: margin,
      width: width,
    );
  }
}
