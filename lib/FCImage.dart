import 'package:famcare/Utils/StaticData.dart';
import 'package:flutter/material.dart';

class FCImage extends StatelessWidget {
  String image;

  FCImage({this.image});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: image != null,
      child: Visibility(
        visible: (image.contains('http')),
        child: Column(
          children: [
            SizedBox(height: 16),
            Image.network(
              image,
              fit: BoxFit.contain,
              height: screenWidth / 4,
              width: screenWidth,
            ),
          ],
        ),
        replacement: Column(
          children: [
            SizedBox(height: 16),
            Image.asset(
              image,
              fit: BoxFit.contain,
              height: screenWidth / 1.9,
              width: screenWidth,
            ),
          ],
        ),
      ),
    );
  }
}
