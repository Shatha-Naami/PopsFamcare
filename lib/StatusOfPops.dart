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
              onPressed: () => FamAlertDialog.showDialog(
                  addImageOption: true,
                  addSpecificComponentOption: true,
                  specificComponent: CalenderComponent(
                      title: 'توقيت الجلسة',
                      titleDay: 'الثلاثاء',
                      date: 13,
                      month: '(7) يوليو',
                      time: 'م 06:00 - 5:30 م'),

                  imagePath: 'assets/images/cancel_image.png',
                  context: context,
                  mainTitle: 'تأكيد الإلغاء',
                  buttons: [
                    ButtonComponent(
                        title:'تعديل الموعد',
                        color: Color(0xff7F7FF8),
                        size: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Famtree-Medium',
                        background: Color(0xffF4F5F8),
                        onTapped: () {
                          Navigator.pop(context);
                          print('change time');
                        }),
                    ButtonComponent(
                        title: 'إغلاق',
                        color: Colors.black,
                        background: Color(0xffF4F5F8),
                        size: 20,
                        onTapped: () {
                          Navigator.pop(context);
                          print('back');
                        }),
                    ButtonComponent(
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
                  subTitle: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  heightContainer: MediaQuery.of(context).size.height - 120),

              child: Text('Default State'),
              color: Colors.orange[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => FamAlertDialog.showDialog(
                  addImageOption: false,

                  context: context,
                  mainTitle: 'تأكيد الإلغاء',
                  subTitle: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  heightContainer: MediaQuery.of(context).size.width * 1.22,
                buttons: [
                  ButtonComponent(
                      title:'تعديل الموعد',
                      color: Color(0xff7F7FF8),
                      size: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Famtree-Medium',
                      background: Color(0xffF4F5F8),
                      onTapped: () {
                        Navigator.pop(context);
                        print('change time');
                      }),
                  ButtonComponent(
                      title: 'إغلاق',
                      color: Colors.black,
                      background: Color(0xffF4F5F8),
                      size: 20,
                      onTapped: () {
                        Navigator.pop(context);
                        print('back');
                      }),
                  ButtonComponent(
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
                addSpecificComponentOption: true,
                specificComponent: CalenderComponent(
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
              onPressed: () => FamAlertDialog.showDialog(
                  addImageOption: true,
                  addSpecificComponentOption: false,

                  imagePath: 'assets/images/cancel_image.png',
                  context: context,
                  buttons: [
                    ButtonComponent(
                        title:'تعديل الموعد',
                        color: Color(0xff7F7FF8),
                        size: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Famtree-Medium',
                        background: Color(0xffF4F5F8),
                        onTapped: () {
                          Navigator.pop(context);
                          print('change time');
                        }),
                    ButtonComponent(
                        title: 'إغلاق',
                        color: Colors.black,
                        background: Color(0xffF4F5F8),
                        size: 20,
                        onTapped: () {
                          Navigator.pop(context);
                          print('back');
                        }),
                    ButtonComponent(
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
                  mainTitle: 'تأكيد الإلغاء',
                  subTitle: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  heightContainer: MediaQuery.of(context).size.width * 1.5),
              child: Text('Without Calender'),
              color: Colors.purple[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => FamAlertDialog.showDialog(
                  addImageOption: false,
                  addSpecificComponentOption: false,
                  buttons: [
                    ButtonComponent(
                        title:'تعديل الموعد',
                        color: Color(0xff7F7FF8),
                        size: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Famtree-Medium',
                        background: Color(0xffF4F5F8),
                        onTapped: () {
                          Navigator.pop(context);
                          print('change time');
                        }),
                    ButtonComponent(
                        title: 'إغلاق',
                        color: Colors.black,
                        background: Color(0xffF4F5F8),
                        size: 20,
                        onTapped: () {
                          Navigator.pop(context);
                          print('back');
                        }),
                    ButtonComponent(
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
                  mainTitle: 'تأكيد الإلغاء',
                  subTitle: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  context: context,
                  heightContainer: MediaQuery.of(context).size.width * 0.93),
              child: Text('Without Photo & Without Calender'),
              color: Colors.amberAccent[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => FamAlertDialog.showDialog(
                  addImageOption: false,
                  addSpecificComponentOption: false,
                  context: context,
                  mainTitle: 'تأكيد الإلغاء',
                  subTitle: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  buttons: [
                    ButtonComponent(
                        title:'تعديل الموعد',
                        color: Color(0xff7F7FF8),
                        size: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Famtree-Medium',
                        background: Color(0xffF4F5F8),
                        onTapped: () {
                          Navigator.pop(context);
                          print('change time');
                        }),
                    ButtonComponent(
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
                  heightContainer: MediaQuery.of(context).size.width * 0.75),
              child: Text('Without Photo & Without Calender & Without Back'),
              color: Colors.lightBlue[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => FamAlertDialog.showDialog(
                  addImageOption: true,
                  addSpecificComponentOption: true,
                  imagePath: 'https://cms-assets.tutsplus.com/uploads/users/523/posts/32694/preview_image/tutorial-preview-small.png',
                  specificComponent: CalenderComponent(
                      title: 'توقيت الجلسة',
                      titleDay: 'الثلاثاء',
                      date: 13,
                      month: '(7) يوليو',
                      time: 'م 06:00 - 5:30 م'),
                  mainTitle: 'تم حجز الجلسة بنجاح',
                  // subTitle: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  buttons: [
                    ButtonComponent(
                        title:'أضف تنبيه للتقويم',
                        color: Color(0xff7F7FF8),
                        size: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Famtree-Medium',
                        background: Color(0xffF4F5F8),
                        onTapped: () {
                          Navigator.pop(context);
                          print('change time');
                        }),
                    ButtonComponent(
                        title: 'إغلاق',
                        color: Colors.black,
                        background: Color(0xffF4F5F8),
                        size: 20,
                        onTapped: () {
                          Navigator.pop(context);
                          print('back');
                        }),
                  ],
                  context: context,disappearAuto:true,
                  heightContainer: MediaQuery.of(context).size.width * 1.1),
              child: Text('Success Item'),
              color: Colors.tealAccent[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => FamAlertDialog.showDialog(
                  addImageOption: true,
                  addSpecificComponentOption: false,
                  imagePath: 'https://cms-assets.tutsplus.com/uploads/users/523/posts/32694/preview_image/tutorial-preview-small.png',
                  mainTitle: 'تم إلغاء الجلسة',
                  subTitle: 'ننتظركم في جلسة جديدة',

                  context: context,
                  buttons: [
                    ButtonComponent(
                        title: 'إغلاق',
                        color: Colors.black,
                        background: Color(0xffF4F5F8),
                        size: 20,
                        onTapped: () {
                          Navigator.pop(context);
                          print('back');
                        }),
                  ],disappearAuto:true,
                  heightContainer: MediaQuery.of(context).size.width * 0.75),
              child: Text('Cancel Meeting'),
              color: Colors.red[200],
            )
          ],
        ),
      ),
    ));
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
