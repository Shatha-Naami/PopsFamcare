import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BodyPackagesCard extends StatelessWidget {
  DateTime dateTime;
  String details;
  IconData iconData;

  BodyPackagesCard({this.details, this.iconData, this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: dateTime != null,
          child: Container(
            child: Text(
              getCompleteDay(dateTime),
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.display1,
            ),
            margin: EdgeInsets.only(right: 6),
            alignment: Alignment.centerRight,
          ),
        ),
        Visibility(
          visible: details != null,
          child: Container(
            child: Text(
              details.toString(),
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.display1,
            ),
            margin: EdgeInsets.only(right: 6),
            alignment: Alignment.centerRight,
          ),
        ),
        Icon(
          iconData,
          color: Color(0xff3A3855),
        ),
      ],
    );
  }

  String getCompleteDay(DateTime dateTime) {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    if (dateTime != null) {
      String string = dateFormat.format(dateTime);
      return string;
    }
    return '';
  }
}
