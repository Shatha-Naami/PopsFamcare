import 'package:flutter/material.dart';

class BottomChildCard extends StatelessWidget {
  String title;
  IconData iconData;
  Color color = Color(0xffB9BECC);
  Function onTap;

  BottomChildCard(this.title, {this.color, this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.display3.copyWith(
                  color: color,
                ),
          ),
          SizedBox(width: 12),
          Visibility(
            visible: iconData != null,
            child: Icon(
              iconData,
              color: color,
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
