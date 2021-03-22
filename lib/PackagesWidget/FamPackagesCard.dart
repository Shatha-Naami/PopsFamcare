import 'package:famcare/PopsWiedget/Utils/StaticData.dart';
import 'package:flutter/material.dart';

class FamPackagesCard extends StatelessWidget {
  String title;
  String subtitle;
  String leading;
  List<Widget> body;
  Widget child;

  FamPackagesCard(this.title,
      {this.leading, this.subtitle, this.body, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color(0xffF7F7F7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(left: 14, right: 14,top: 8),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              dense: false,
              title: Text(
                title,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.title,
              ),
              subtitle: Text(
                subtitle,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.display1,
              ),
              leading: Container(
                child: Text(
                  leading,
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
              children: body,
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
                child: child
                // Text('لا يمكن إلغاء الباقة، لبدئك الجلسات العلاجية',
                //     style: Theme.of(context).textTheme.display3),
                ),
          )
        ],
      ),
    );
  }
}
