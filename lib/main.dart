import 'package:famcare/StatusOfPops.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: key,
      debugShowCheckedModeBanner: false,
      home: StatusOfPops(),
      // TODO use the material app theme / custom theme
      theme: ThemeData(
        fontFamily: 'Famtree-Regular',
        textTheme: TextTheme(
          display1: TextStyle(
            color: Color(0xff7F7FF8),
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'Famtree-Medium',
          ),
          display2: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w100,
            fontFamily: 'Famtree-Medium',
          ),
          display3: TextStyle(
            color: Color(0xffBDC2CF),
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Famtree-Regular',
          ),
          title: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            fontFamily: 'Famtree-Medium',
            height: 1,
          ),
          display4: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            height: 1.4,
          ),
        ),
      ),
    );
  }
}
