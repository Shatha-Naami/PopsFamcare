import 'package:flutter/material.dart';

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
          // Icons.credit_card,
          color: Color(0xff3A3855),
        ),
      ],
    );
  }

  String getCompleteDay(DateTime dateTime) {
    // return '${dateTime.year}/${dateTime.month}/${dateTime.day}';
    // print('${dateTime.day.toString()}');
    return '${dateTime.toString().split(' ').first}';
  }
}
