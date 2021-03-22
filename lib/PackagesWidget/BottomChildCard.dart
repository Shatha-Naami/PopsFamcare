import 'package:flutter/material.dart';

class BottomChildCard extends StatelessWidget {
  String title;
  IconData iconData;
  String status;

  BottomChildCard({this.title, this.status, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .display3
              .copyWith(color: getSpecificColor(status)),
        ),
        SizedBox(width: 12),
        Visibility(
          visible: iconData != null,
          child: Icon(
            iconData,
            color: getSpecificColor(
              status,
            ),
          ),
        ),
      ],
    );
  }

  Color getSpecificColor(String status) {
    switch (status) {
      case 'waiting':
        return Color(0xffDE4343);
        break;
      case 'isCanceled':
        return Color(0xff3A3855);
        break;
      case 'done':
        return Color(0xff3A3855);
        break;

      default:
        return Color(0xffB9BECC);
    }
  }
}
