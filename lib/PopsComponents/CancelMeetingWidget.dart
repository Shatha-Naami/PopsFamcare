import 'package:famcare/PopsComponents/CheckComponent.dart';
import 'package:famcare/Utils/StaticData.dart';
import 'package:flutter/material.dart';

import 'ButtonComponent.dart';
import 'MessagesComponents.dart';

class CancelMeetingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckComponent(),
        MessagesComponents(
            title: 'تم إلغاء الجلسة',
            fontWeight: FontWeight.w800,
            fontSize: 20,
            width: widthScreen,
            margin: EdgeInsets.only(top: 8, bottom: 12)),
        MessagesComponents(
            title: 'ننتظركم في جلسة جديدة',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            heightText: 1.4,
            width: widthScreen / 1.7,
            margin: EdgeInsets.only(top: 8, bottom: 12)),
        ButtonComponent(
          title: 'إغلاق',
          color: Color(0xff7F7FF8),
          size: 22,
          background: Color(0xffF4F5F8),
          onTapped: ()  { Navigator.pop(context);print('change time');},
        ),
      ],
    );
  }
}
