import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  final String title;
  final String titleDay;
  final int date;
  final String month;
  final String time;
  final String fontFamily;

  Calender(
      {Key key,
      this.titleDay,
      this.title,
      this.date,
      this.month,
      this.time,
      this.fontFamily = 'Famtree-Regular'})
      : super(key: key);

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
                    child: Text(title,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: fontFamily),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(time,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: fontFamily),
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
                    child: Text(titleDay,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: fontFamily),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(height: 12),
                  Container(
                    child: Text(date.toString(),
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    margin: EdgeInsets.all(0),
                    child: Text(month,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: fontFamily),
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
}
