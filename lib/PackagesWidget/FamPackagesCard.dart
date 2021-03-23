import 'package:famcare/PackagesWidget/BodyPackagesCard.dart';
import 'package:famcare/PackagesWidget/BottomChildCard.dart';
import 'package:famcare/PackagesWidget/models/PackagesModel.dart';
import 'package:famcare/PopsWiedget/Utils/StaticData.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';

class FamPackagesCard extends StatelessWidget {
  PackageData packagesModel;

  FamPackagesCard({this.packagesModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 160,
        width: screenWidth,
        margin: EdgeInsets.only(bottom: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Color(0xffF7F7F7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(left: 14, right: 14, top: 8),
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                dense: false,
                title: Text(
                  packagesModel.title ?? 'No Title',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.title,
                ),
                subtitle: Text(
                  _parseHtmlString(packagesModel.paymentMethod ?? 'No Payment'),
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.display1,
                ),
                leading: Container(
                  child: Text(
                    packagesModel.total,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.display4,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 14, right: 14, bottom: 12, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BodyPackagesCard(
                    dateTime: packagesModel.paidAt,
                    iconData: Icons.date_range,
                  ),
                  BodyPackagesCard(
                    details: '300239',
                    iconData: Icons.credit_card,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: screenWidth,
                padding: EdgeInsets.only(top: 8, bottom: 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  color: Colors.white,
                ),
                child: (packagesModel.status != 'loading')
                    ? BottomChildCard(
                        financialText: packagesModel.financialText,
                        status: packagesModel.status)
                    : SizedBox(
                        height: 30.0,
                        width: 20.0,
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xff7F7FF8)),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
      onTap: ()=> print('Status is :${packagesModel.type}'),
    );
  }

  String _parseHtmlString(String htmlString) {
    final document = parse(htmlString);
    final String parsedString = parse(document.body.text).documentElement.text;
    return parsedString;
  }
}
