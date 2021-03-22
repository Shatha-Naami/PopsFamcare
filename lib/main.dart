import 'package:famcare/PackagesWidget/ShowAllPackagesScreen.dart';
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
      home: ShowAllPackages(),
      theme: ThemeData(
        fontFamily: 'Famtree-Regular',
        textTheme: TextTheme(
          display2: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w100,
            fontFamily: 'Famtree-Medium',
          ),

          title: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              fontFamily: 'Famtree-Medium',
              height: 1,
              color: Color(0xff3A3855)),
          display4: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'Famtree-Regular',
            fontSize: 16,
            color: Color(0xff3A3855),
          ),
          display1: TextStyle(
            color: Color(0xff3A3855),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'Famtree-Light',
          ),
          display3: TextStyle(
            color: Color(0xffB9BECC),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Famtree-Regular',
          ),
        ),
      ),
    );
  }
}
