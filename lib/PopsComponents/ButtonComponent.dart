import 'package:famcare/Utils/StaticData.dart';
import 'package:flutter/material.dart';

class FamAlertButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color background;
  final double size;
  final Function onTapped;
  final String fontFamily;
  final FontWeight fontWeight;

  FamAlertButton(
      {Key key,
      this.onTapped,
      this.title,
      this.fontWeight,
      this.color,
      this.size,
      this.background,
      this.fontFamily = 'Famtree-Regular'})
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
            child: Text(title,
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontWeight: fontWeight,
                    color: color,
                    fontSize: size)),
          ),
        ],
      ),
      onTap: onTapped,
    );
  }
}
