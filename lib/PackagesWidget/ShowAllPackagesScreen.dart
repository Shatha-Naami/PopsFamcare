import 'package:famcare/PackagesWidget/BodyPackagesCard.dart';
import 'package:famcare/PackagesWidget/BottomChildCard.dart';
import 'package:famcare/PackagesWidget/FamPackagesCard.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShowAllPackages extends StatefulWidget {
  @override
  _ShowAllPackagesState createState() => _ShowAllPackagesState();
}

class _ShowAllPackagesState extends State<ShowAllPackages> {
  DateFormat dateFormat = DateFormat("d-MM-yyyy");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 8, right: 8, top: 66),
          child: Column(
            children: [
              /// FIRST STATUS
              FamPackagesCard(
                'باقة ٠ 10 جلسات',
                subtitle: 'رصيد مسبق',
                leading: '150 ر.س',
                body: [
                  BodyPackagesCard(
                    dateTime: DateTime.parse("2019-04-16 12:18:06.018950"),
                    iconData: Icons.date_range,
                  ),
                  BodyPackagesCard(
                    details: '300239',
                    iconData: Icons.credit_card,
                  ),
                ],
                child: BottomChildCard(
                  'لا يمكن إلغاء الباقة، لبدئك الجلسات العلاجية',
                  onTap: () => print('object'),
                ),
              ),
              SizedBox(height: 22),

              /// SECOND STATUS
              FamPackagesCard(
                'باقة ٠ 3 جلسات',
                subtitle: 'رصيد محول',
                leading: '57.8 ر.س',
                body: [
                  BodyPackagesCard(
                    dateTime: DateTime.parse("2019-04-16 12:18:06.018950"),
                    iconData: Icons.date_range,
                  ),
                  BodyPackagesCard(
                    details: '300239',
                    iconData: Icons.credit_card,
                  ),
                ],
                child: BottomChildCard(
                  'إلغاء واسترجاع المبلغ',
                  color: Color(0xffDE4343),
                  iconData: Icons.clean_hands_sharp,
                  onTap: () => print('object'),
                ),
              ),
              SizedBox(height: 22),

              /// THIRD STATUS
              FamPackagesCard(
                'جلسة واحدة',
                subtitle: 'دعم من فامكير',
                leading: '0 ر.س',
                body: [
                  BodyPackagesCard(
                    dateTime: DateTime.parse("2019-04-16 12:18:06.018950"),
                    iconData: Icons.date_range,
                  ),
                  BodyPackagesCard(
                    details: '300239',
                    iconData: Icons.credit_card,
                  ),
                ],
                child: BottomChildCard(
                  'تم الإلغاء واسترجاء المبلغ',
                  color: Color(0xff3A3855),
                  iconData: Icons.photo_library,
                  onTap: () => print('object'),
                ),
              ),
              SizedBox(height: 22),

              /// FOURTH STATUS
              FamPackagesCard('باقة ٠ 3 جلسات',
                  subtitle: 'رصيد مسبق',
                  leading: '150 ر.س',
                  body: [
                    BodyPackagesCard(
                      dateTime: DateTime.parse("2019-04-16 12:18:06.018950"),
                      iconData: Icons.date_range,
                    ),
                    BodyPackagesCard(
                      details: '300239',
                      iconData: Icons.credit_card,
                    ),
                  ],
                  child: SizedBox(  height: 30.0,
                    width: 20.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xff7F7FF8)),
                    ),
                  )),
              SizedBox(height: 22),

              /// FIFTH STATUS
              FamPackagesCard(
                'باقة ٠ 3 جلسات',
                subtitle: 'رصيد مسبق',
                leading: '150 ر.س',
                body: [
                  BodyPackagesCard(
                    dateTime: DateTime.parse("2019-04-16 12:18:06.018950"),
                    iconData: Icons.date_range,
                  ),
                  BodyPackagesCard(
                    details: '300239',
                    iconData: Icons.credit_card,
                  ),
                ],
                child: BottomChildCard(
                  'تم إتمام الجلسات العلاجية',
                  color: Color(0xff3A3855),
                  iconData: Icons.check,
                  onTap: () => print('object'),
                ),
              ),
              SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }
}
