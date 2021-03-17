import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalenderComponent extends StatelessWidget {
  final String title;
  final String titleDay;
  final int date;
  final String month;
  final String time;

  CalenderComponent(
      {Key key, this.titleDay, this.title, this.date, this.month, this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(left: 4,right: 4),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 120,
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
                    margin: EdgeInsets.only(top: 12),
                    padding:
                    EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
                    child: Text(title,
                        style: GoogleFonts.almarai(
                            fontWeight: FontWeight.w400, fontSize: 16),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(time,
                        style: GoogleFonts.almarai(
                            fontWeight: FontWeight.bold, fontSize: 22),
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
              height: 120,
              padding: EdgeInsets.only(left: 12, right: 12),
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
                    margin: EdgeInsets.only(top: 12),
                    padding:
                        EdgeInsets.only(left: 14, right: 14, top: 6, bottom: 6),
                    child: Text(titleDay,
                        style: GoogleFonts.almarai(
                            fontWeight: FontWeight.w400, fontSize: 16),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    child: Text(date.toString(),
                        style: GoogleFonts.almarai(
                            fontWeight: FontWeight.bold, fontSize: 34),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(month,
                        style: GoogleFonts.almarai(
                            fontWeight: FontWeight.w600, fontSize: 16),
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
