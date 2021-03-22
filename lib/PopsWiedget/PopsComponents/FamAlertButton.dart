import 'package:famcare/PopsWiedget/Utils/StaticData.dart';
import 'package:flutter/material.dart';

class FamAlertButton extends StatelessWidget {
  final String title;
  final Color background;
  final Function onTapped;
  final TextStyle style;

  FamAlertButton(this.title,
      {Key key, this.onTapped, this.background, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Divider(height: 1, thickness: 0.8),
          Container(
            width: screenWidth,
            color: background,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 22, bottom: 22),
            child: Text(title, style: style),
          ),
        ],
      ),
      onTap: onTapped,
    );
  }
}
