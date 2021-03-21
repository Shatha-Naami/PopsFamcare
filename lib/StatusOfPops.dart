import 'package:famcare/MainComponents/FamAlertDialog.dart';
import 'package:famcare/PopsComponents/ButtonComponent.dart';
import 'package:famcare/PopsComponents/CalenderComponent.dart';
import 'package:flutter/material.dart';

class StatusOfPops extends StatefulWidget {
  @override
  _StatusOfPopsState createState() => _StatusOfPopsState();
}

class _StatusOfPopsState extends State<StatusOfPops> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              FlatButton(
                child: Text('Default State'),
                color: Colors.orange[200],
                onPressed: () => FamAlertDialog.show(
                  context: context,
                  height: MediaQuery.of(context).size.height - 30,
                  image: 'assets/images/cancel_image.png',
                  title: 'تأكيد الإلغاء',
                  description: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  // TODO choose a better name nested of Calender
                  child: Calender(
                    title: 'توقيت الجلسة',
                    // todo replace with a datetime object
                    titleDay: 'الثلاثاء',
                    date: 13,
                    month: '(7) يوليو',
                    time: 'م 06:00 - 5:30 م',
                  ),
                  buttons: [
                    // TODO deal with title as required not named param
                    FamAlertButton(
                        title: 'تعديل الموعد',
                        // todo to be replaced with custom primary button or button type
                        color: Color(0xff7F7FF8),
                        size: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Famtree-Medium',
                        background: Color(0xffF4F5F8),
                        onTapped: () {
                          Navigator.pop(context);
                          print('change time');
                        }),
                    FamAlertButton(
                        title: 'تراجع',
                        color: Colors.black,
                        background: Color(0xffF4F5F8),
                        size: 20,
                        onTapped: () {
                          Navigator.pop(context);
                          print('back');
                        }),
                    FamAlertButton(
                      title: 'نعم, إلغاء الجلسة',
                      color: Color(0xffBDC2CF),
                      background: Colors.white,
                      size: 18,
                      onTapped: () {
                        Navigator.pop(context);
                        print('cancel');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              FlatButton(
                onPressed: () => FamAlertDialog.show(
                  context: context,
                  title: 'تأكيد الإلغاء',
                  description: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  height: MediaQuery.of(context).size.width * 1.26,
                  buttons: [
                    FamAlertButton(
                        title: 'تعديل الموعد',
                        color: Color(0xff7F7FF8),
                        size: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Famtree-Medium',
                        background: Color(0xffF4F5F8),
                        onTapped: () {
                          Navigator.pop(context);
                          print('change time');
                        }),
                    FamAlertButton(
                        title: 'تراجع',
                        color: Colors.black,
                        background: Color(0xffF4F5F8),
                        size: 20,
                        onTapped: () {
                          Navigator.pop(context);
                          print('back');
                        }),
                    FamAlertButton(
                      title: 'نعم, إلغاء الجلسة',
                      color: Color(0xffBDC2CF),
                      background: Colors.white,
                      size: 18,
                      onTapped: () {
                        Navigator.pop(context);
                        print('cancel');
                      },
                    ),
                  ],
                  child: Calender(
                      title: 'توقيت الجلسة',
                      titleDay: 'الثلاثاء',
                      date: 13,
                      month: '(7) يوليو',
                      time: 'م 06:00 - 5:30 م'),
                ),
                child: Text('Without Photo'),
                color: Colors.pink[200],
              ),
              SizedBox(height: 32),
              FlatButton(
                onPressed: () => FamAlertDialog.show(
                    image: 'assets/images/cancel_image.png',
                    context: context,
                    buttons: [
                      FamAlertButton(
                          title: 'تعديل الموعد',
                          color: Color(0xff7F7FF8),
                          size: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Famtree-Medium',
                          background: Color(0xffF4F5F8),
                          onTapped: () {
                            Navigator.pop(context);
                            print('change time');
                          }),
                      FamAlertButton(
                          title: 'تراجع',
                          color: Colors.black,
                          background: Color(0xffF4F5F8),
                          size: 20,
                          onTapped: () {
                            Navigator.pop(context);
                            print('back');
                          }),
                      FamAlertButton(
                        title: 'نعم, إلغاء الجلسة',
                        color: Color(0xffBDC2CF),
                        background: Colors.white,
                        size: 18,
                        onTapped: () {
                          Navigator.pop(context);
                          print('cancel');
                        },
                      ),
                    ],
                    title: 'تأكيد الإلغاء',
                    description:
                        'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                    height: MediaQuery.of(context).size.width * 1.5),
                child: Text('Without Calender'),
                color: Colors.purple[200],
              ),
              SizedBox(height: 32),
              FlatButton(
                onPressed: () => FamAlertDialog.show(
                    buttons: [
                      FamAlertButton(
                          title: 'تعديل الموعد',
                          color: Color(0xff7F7FF8),
                          size: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Famtree-Medium',
                          background: Color(0xffF4F5F8),
                          onTapped: () {
                            Navigator.pop(context);
                            print('change time');
                          }),
                      FamAlertButton(
                          title: 'تراجع',
                          color: Colors.black,
                          background: Color(0xffF4F5F8),
                          size: 20,
                          onTapped: () {
                            Navigator.pop(context);
                            print('back');
                          }),
                      FamAlertButton(
                        title: 'نعم, إلغاء الجلسة',
                        color: Color(0xffBDC2CF),
                        background: Colors.white,
                        size: 18,
                        onTapped: () {
                          Navigator.pop(context);
                          print('cancel');
                        },
                      ),
                    ],
                    title: 'تأكيد الإلغاء',
                    description:
                        'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                    context: context,
                    height: MediaQuery.of(context).size.width * 0.93),
                child: Text('Without Photo & Without Calender'),
                color: Colors.amberAccent[200],
              ),
              SizedBox(height: 32),
              FlatButton(
                onPressed: () => FamAlertDialog.show(
                    context: context,
                    title: 'تأكيد الإلغاء',
                    description:
                        'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                    buttons: [
                      FamAlertButton(
                          title: 'تعديل الموعد',
                          color: Color(0xff7F7FF8),
                          size: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Famtree-Medium',
                          background: Color(0xffF4F5F8),
                          onTapped: () {
                            Navigator.pop(context);
                            print('change time');
                          }),
                      FamAlertButton(
                        title: 'نعم, إلغاء الجلسة',
                        color: Color(0xffBDC2CF),
                        background: Colors.white,
                        size: 18,
                        onTapped: () {
                          Navigator.pop(context);
                          print('cancel');
                        },
                      ),
                    ],
                    height: MediaQuery.of(context).size.width * 0.75),
                child: Text('Without Photo & Without Calender & Without Back'),
                color: Colors.lightBlue[200],
              ),
              SizedBox(height: 32),
              FlatButton(
                onPressed: () => FamAlertDialog.show(
                    image:
                        'https://cms-assets.tutsplus.com/uploads/users/523/posts/32694/preview_image/tutorial-preview-small.png',
                    child: Calender(
                        title: 'توقيت الجلسة',
                        titleDay: 'الثلاثاء',
                        date: 13,
                        month: '(7) يوليو',
                        time: 'م 06:00 - 5:30 م'),
                    title: 'تم حجز الجلسة بنجاح',
                    // subTitle: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                    buttons: [
                      FamAlertButton(
                          title: 'أضف تنبيه للتقويم',
                          color: Color(0xff7F7FF8),
                          size: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Famtree-Medium',
                          background: Color(0xffF4F5F8),
                          onTapped: () {
                            Navigator.pop(context);
                            print('change time');
                          }),
                      FamAlertButton(
                          title: 'إغلاق',
                          color: Colors.black,
                          background: Color(0xffF4F5F8),
                          size: 20,
                          onTapped: () {
                            Navigator.pop(context);
                            print('back');
                          }),
                    ],
                    context: context,
                    disappearAuto: true,
                    height: MediaQuery.of(context).size.width * 1.15),
                child: Text('Success Item'),
                color: Colors.tealAccent[200],
              ),
              SizedBox(height: 32),
              FlatButton(
                onPressed: () => FamAlertDialog.show(
                    image:
                        'https://cms-assets.tutsplus.com/uploads/users/523/posts/32694/preview_image/tutorial-preview-small.png',
                    title: 'تم إلغاء الجلسة',
                    description: 'ننتظركم في جلسة جديدة',
                    context: context,
                    buttons: [
                      FamAlertButton(
                          title: 'إغلاق',
                          color: Colors.black,
                          background: Color(0xffF4F5F8),
                          size: 20,
                          onTapped: () {
                            Navigator.pop(context);
                            print('back');
                          }),
                    ],
                    disappearAuto: true,
                    height: MediaQuery.of(context).size.width * 0.78),
                child: Text('Cancel Meeting'),
                color: Colors.red[200],
              )
            ],
          ),
        ),
      ),
    );
  }

// Design < 80%
// Move AlertDialog inside PopsFamCareComponent
// Rename PopsFamCareComponent to FamAlertDialog
// Review the existing packages to use them or inspire from them
// We must be able to customize the actions (e.x onTap)
// Allow the developer to customize any assets or texts
// FCAlertDialog must not have any information about the calender
// FCAlertDialog must not use names like (meeting or any project related term)

}
