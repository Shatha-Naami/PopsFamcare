import 'package:famcare/PopsComponents/ButtonComponent.dart';
import 'package:famcare/PopsComponents/CalenderComponent.dart';
import 'package:famcare/PopsComponents/CancelMeetingWidget.dart';
import 'package:famcare/PopsComponents/CheckComponent.dart';
import 'package:famcare/PopsComponents/MessagesComponents.dart';
import 'package:famcare/Utils/StaticData.dart';
import 'package:flutter/material.dart';

class PopsFamCareComponent extends StatefulWidget {
  final bool showImage;
  final bool showCalender;
  final bool showBackButton;
  final bool showSuccess;
  final bool cancelMeeting;

  PopsFamCareComponent(
      {Key key, this.showImage, this.showCalender, this.showBackButton,this.showSuccess,this.cancelMeeting})
      : super(key: key);

  @override
  _PopsFamCareComponentState createState() => _PopsFamCareComponentState();
}

class _PopsFamCareComponentState extends State<PopsFamCareComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Wrap(
        children: [
          Card(
            elevation: 12,
            margin: EdgeInsets.only(top: !widget.showImage ? 45 : 0),
            child:
            (!widget.cancelMeeting) ?Container(
              width: widthScreen, alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.white),
              child: Column(
                children: [
                   ((widget.showImage ==true) &&(widget.showSuccess == false))
                    ?Container(
                        child: Image.asset('assets/images/cancel_image.png',
                            fit: BoxFit.contain,
                            height: widthScreen / 1.5,
                            width: widthScreen)):((widget.showImage ==false) &&(widget.showSuccess == true)) ? CheckComponent():Container(),
                  MessagesComponents(
                      title: !widget.showSuccess  ? 'تأكيد الإلغاء':'تم حجز الجلسة بنجاح',
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      width: widthScreen,
                      margin: !widget.showSuccess  ? EdgeInsets.only(top: 22):EdgeInsets.only(top: 8, bottom: 12)),
                 (widget.showSuccess)?Container(): MessagesComponents(
                      title: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      heightText: 1.4,
                      width: widthScreen / 1.7,
                      margin: EdgeInsets.only(top: 8, bottom: 12)),
                  Container(
                    color: Color(0xffF4F5F8),
                    child: Column(
                      children: [
                        if (widget.showCalender)
                          CalenderComponent(
                              title: 'توقيت الجلسة',
                              titleDay: 'الثلاثاء',
                              date: 13,
                              month: '(7) يوليو',
                              time: '06:00 - 5:30'),
                        SizedBox(height: 8),
                        Divider(height: 1, thickness: 0.8),
                        ButtonComponent(
                          title: !widget.showSuccess ? 'تعديل الموعد':'أضف تنبيه للتقويم',
                          color: Color(0xff7F7FF8),
                          size: 22,
                          background: Color(0xffF4F5F8),
                          onTapped: () => print('change time'),
                        ),
                        Divider(height: 1, thickness: 0.8),
                        if (widget.showBackButton || widget.showSuccess)
                          ButtonComponent(
                            title:!widget.showSuccess ? 'تراجع':'إغلاق',
                            color: Colors.black,
                            background: Color(0xffF4F5F8),
                            size: 20,
                            onTapped: () => print('back'),
                          ),
                        Divider(height: 1, thickness: 0.8),
                       if(!widget.showSuccess) ButtonComponent(
                          title: 'نعم, إلغاء الجلسة',
                          color: Color(0xffBDC2CF),
                          background: Colors.white,
                          size: 18,
                          onTapped: () => print('cancel'),
                        ),
                        Divider(height: 1, thickness: 0.8),

                      ],
                    ),
                  )
                ],
              ),
            ):CancelMeetingWidget(),
          ),
        ],
      ),
    )));
  }
}
