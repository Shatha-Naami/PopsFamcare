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
      navigatorKey: key,debugShowCheckedModeBanner: false,
      home: StatusOfPops(),
    );
  }
}
