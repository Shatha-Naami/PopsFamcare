import 'package:famcare/MainComponents/FamAlertDialog.dart';
import 'package:famcare/PopsComponents/FamAlertButton.dart';
import 'package:famcare/PopsComponents/SessionTime.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StatusOfPops extends StatefulWidget {
  @override
  _StatusOfPopsState createState() => _StatusOfPopsState();
}

class _StatusOfPopsState extends State<StatusOfPops> {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");

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
                  height: MediaQuery.of(context).size.height - 30,
                  image: 'assets/images/cancel_image.png',
                  title: 'تأكيد الإلغاء',
                  description: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  // TODO choose a better name nested of Calender
                  child: SessionTime(dateFormat.parse("2019-07-19 8:40:23")),
                  buttons: [
                    // TODO deal with title as required not named param
                    FamAlertButton('تعديل الموعد',
                        // todo to be replaced with custom primary button or button type
                        style: Theme.of(context).textTheme.display1,
                        background: Color(0xffF4F5F8),
                        onTapped: () => Navigator.pop(context)),
                    FamAlertButton('تراجع',
                        background: Color(0xffF4F5F8),
                        style: Theme.of(context).textTheme.display2,
                        onTapped: () => Navigator.pop(context)),
                    FamAlertButton('نعم, إلغاء الجلسة',
                        background: Colors.white,
                        style: Theme.of(context).textTheme.display3,
                        onTapped: () => Navigator.pop(context)),
                  ],
                ),
              ),
              SizedBox(height: 32),
              FlatButton(
                child: Text('Without Photo'),
                color: Colors.pink[200],
                onPressed: () => FamAlertDialog.show(
                  height: MediaQuery.of(context).size.width * 1.26,
                  title: 'تأكيد الإلغاء',
                  description: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  child: SessionTime(dateFormat.parse("2019-07-19 8:40:23")),
                  buttons: [
                    FamAlertButton('تعديل الموعد',
                        style: Theme.of(context).textTheme.display1,
                        background: Color(0xffF4F5F8),
                        onTapped: () => Navigator.pop(context)),
                    FamAlertButton('تراجع',
                        background: Color(0xffF4F5F8),
                        style: Theme.of(context).textTheme.display2,
                        onTapped: () => Navigator.pop(context)),
                    FamAlertButton('نعم, إلغاء الجلسة',
                        background: Colors.white,
                        style: Theme.of(context).textTheme.display3,
                        onTapped: () => Navigator.pop(context)),
                  ],
                ),
              ),
              SizedBox(height: 32),
              FlatButton(
                child: Text('Without Calender'),
                color: Colors.purple[200],
                onPressed: () => FamAlertDialog.show(
                  height: MediaQuery.of(context).size.width * 1.5,
                  image: 'assets/images/cancel_image.png',
                  title: 'تأكيد الإلغاء',
                  description: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  buttons: [
                    FamAlertButton('تعديل الموعد',
                        style: Theme.of(context).textTheme.display1,
                        background: Color(0xffF4F5F8),
                        onTapped: () => Navigator.pop(context)),
                    FamAlertButton('تراجع',
                        background: Color(0xffF4F5F8),
                        style: Theme.of(context).textTheme.display2,
                        onTapped: () => Navigator.pop(context)),
                    FamAlertButton('نعم, إلغاء الجلسة',
                        background: Colors.white,
                        style: Theme.of(context).textTheme.display3,
                        onTapped: () => Navigator.pop(context)),
                  ],
               ),
              ),
              SizedBox(height: 32),
              FlatButton(
                onPressed: () => FamAlertDialog.show(
                  height: MediaQuery.of(context).size.width * 0.93,
                  title: 'تأكيد الإلغاء',
                  description: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                  buttons: [
                      FamAlertButton('تعديل الموعد',
                          style: Theme.of(context).textTheme.display1,
                          background: Color(0xffF4F5F8),
                          onTapped: () => Navigator.pop(context)),
                      FamAlertButton('تراجع',
                          background: Color(0xffF4F5F8),
                          style: Theme.of(context).textTheme.display2,
                          onTapped: () => Navigator.pop(context)),
                      FamAlertButton('نعم, إلغاء الجلسة',
                          background: Colors.white,
                          style: Theme.of(context).textTheme.display3,
                          onTapped: () => Navigator.pop(context)),
                    ],
                ),
                child: Text('Without Photo & Without Calender'),
                color: Colors.amberAccent[200],
              ),
              SizedBox(height: 32),
              FlatButton(
                onPressed: () => FamAlertDialog.show(
                  height: MediaQuery.of(context).size.width * 0.75,
                  title: 'تأكيد الإلغاء',
                    description: 'نأسف, لا يوجد مستشارين متاحين تم إنهاء الجلسة',
                    buttons: [
                      FamAlertButton('تعديل الموعد',
                          style: Theme.of(context).textTheme.display1,
                          background: Color(0xffF4F5F8),
                          onTapped: () => Navigator.pop(context)),
                      FamAlertButton('نعم, إلغاء الجلسة',
                          background: Colors.white,
                          style: Theme.of(context).textTheme.display3,
                          onTapped: () => Navigator.pop(context)),
                    ],
                ),
                child: Text('Without Photo & Without Calender & Without Back'),
                color: Colors.lightBlue[200],
              ),
              SizedBox(height: 32),
              FlatButton(
                child: Text('Success Item'),
                color: Colors.tealAccent[200],
                onPressed: () => FamAlertDialog.show(
                    height: MediaQuery.of(context).size.width * 1.15,
                    image: 'https://cms-assets.tutsplus.com/uploads/users/523/posts/32694/preview_image/tutorial-preview-small.png',
                  title: 'تم حجز الجلسة بنجاح',
                  child: SessionTime(dateFormat.parse("2019-07-19 8:40:23")),
                    buttons: [
                      FamAlertButton('أضف تنبيه للتقويم',
                          style: Theme.of(context).textTheme.display1,
                          background: Color(0xffF4F5F8),
                          onTapped: () => Navigator.pop(context)),
                      FamAlertButton('إغلاق',
                          background: Colors.white,
                          style: Theme.of(context).textTheme.display3,
                          onTapped: () => Navigator.pop(context)),
                    ],
                  disappearAuto: true,
                ),
              ),
              SizedBox(height: 32),
              FlatButton(
                child: Text('Cancel Meeting'),
                color: Colors.red[200],
                onPressed: () => FamAlertDialog.show(
                  height: MediaQuery.of(context).size.width * 0.78,
                    image: 'https://cms-assets.tutsplus.com/uploads/users/523/posts/32694/preview_image/tutorial-preview-small.png',
                    title: 'تم إلغاء الجلسة',
                    description: 'ننتظركم في جلسة جديدة',
                    buttons: [
                      FamAlertButton('تراجع',
                          background: Color(0xffF4F5F8),
                          style: Theme.of(context).textTheme.display2,
                          onTapped: () => Navigator.pop(context)),
                    ],
                    disappearAuto: true,
                ),

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
