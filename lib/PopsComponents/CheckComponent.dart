import 'package:flutter/material.dart';

class CheckComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(top: 32),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Color(0xff19BF73)),
      child: Icon(Icons.check_circle, color: Colors.white, size: 40),
    );
  }
}
