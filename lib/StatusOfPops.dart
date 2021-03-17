import 'package:famcare/MainComponents/PopsFamcareComponent.dart';
import 'package:famcare/Utils/StaticData.dart';
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
              onPressed: () => onNavigator(
                  showImage: true,
                  showCalender: true,
                  showBackButton: true,
                  showSuccess: false,
                  cancelMeeting: false,
                  heightContainer: MediaQuery.of(context).size.height - 20),
              child: Text('Default State'),
              color: Colors.orange[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => onNavigator(
                  showImage: false,
                  showCalender: true,
                  showBackButton: true,
                  showSuccess: false,
                  cancelMeeting: false,
                  heightContainer: MediaQuery.of(context).size.width *1.2),
              child: Text('Without Photo'),
              color: Colors.pink[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => onNavigator(
                  showImage: true,
                  showCalender: false,
                  showBackButton: true,
                  showSuccess: false,
                  cancelMeeting: false,
                  heightContainer: MediaQuery.of(context).size.width *1.5),
              child: Text('Without Calender'),
              color: Colors.purple[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => onNavigator(
                  showImage: false,
                  showCalender: false,
                  showBackButton: true,
                  showSuccess: false,
                  cancelMeeting: false,
                  heightContainer: MediaQuery.of(context).size.width*0.82),
              child: Text('Without Photo & Without Calender'),
              color: Colors.amberAccent[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => onNavigator(
                  showImage: false,
                  showCalender: false,
                  showBackButton: false,
                  showSuccess: false,
                  cancelMeeting: false,
                  heightContainer: MediaQuery.of(context).size.width*0.65),
              child: Text('Without Photo & Without Calender & Without Back'),
              color: Colors.lightBlue[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => onNavigator(
                  showImage: false,
                  showCalender: true,
                  showBackButton: false,
                  showSuccess: true,
                  cancelMeeting: false,
                  heightContainer: MediaQuery.of(context).size.width *1.1),
              child: Text('Success Item'),
              color: Colors.tealAccent[200],
            ),
            SizedBox(height: 32),
            FlatButton(
              onPressed: () => onNavigator(
                  showImage: false,
                  showCalender: true,
                  showBackButton: false,
                  showSuccess: true,
                  cancelMeeting: true,
                  heightContainer: MediaQuery.of(context).size.width*0.7),
              child: Text('Cancel Meeting'),
              color: Colors.red[200],
            )
          ],
        ),
      ),
    ));
  }

  onNavigator(
      {bool showImage,
      bool showCalender,
      bool showBackButton,
      bool showSuccess,
      bool cancelMeeting,
      double heightContainer}) {
    showDialog(
        context: context,
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          contentPadding: EdgeInsets.all(0.0),
          content: Container(
            height: heightContainer,
            width: widthScreen,
            margin: EdgeInsets.all(12),
            child: PopsFamCareComponent(
              showImage: showImage,
              showCalender: showCalender,
              showBackButton: showBackButton,
              showSuccess: showSuccess,
              cancelMeeting: cancelMeeting,
            ),
          ),
        ));
  }
}
