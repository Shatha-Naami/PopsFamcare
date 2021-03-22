import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as Date;

class SessionTime extends StatelessWidget {
  final DateTime date;

  SessionTime(this.date);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4, right: 4),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 110,
              margin: EdgeInsets.only(left: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xffF7F7F7)),
                    margin: EdgeInsets.only(top: 6),
                    padding:
                        EdgeInsets.only(left: 56, right: 56, top: 3, bottom: 3),
                    child: Text('توقيت الجلسة',
                        style: Theme.of(context).textTheme.display3.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                        'م ${date.hour.toString()} - ${DateTime.now().hour.toString()} م',
                        style: Theme.of(context).textTheme.display3.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                ],
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              height: 110,
              // padding: EdgeInsets.only(bottom: 4),
              margin: EdgeInsets.only(left: 4, top: 12, bottom: 12, right: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xffF7F7F7)),
                    margin: EdgeInsets.only(top: 6),
                    padding:
                        EdgeInsets.only(left: 22, right: 22, top: 3, bottom: 3),
                    child: Text(Date.DateFormat('EEEE').format(date),
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Famtree-Regular'),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(height: 12),
                  Container(
                    child: Text(date.day.toString(),
                        style: TextStyle(
                            fontFamily: 'Famtree-Regular',
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    margin: EdgeInsets.all(0),
                    child: Text(
                        '(${date.month.toString()}) ${months[date.month]}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: 'Famtree-Regular'),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }

  List<String> months = [
    'يناير',
    'فبراير',
    'مارس',
    'ابريل',
    'مايو',
    'يونيو',
    'يوليو',
    'أغسطس',
    'سبتمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر'
  ];
}
