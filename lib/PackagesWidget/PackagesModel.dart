import 'package:flutter/cupertino.dart';

class PackagesModel {
  String title;
  String subtitle;
  double price;
  int cardNo;
  String dateTime;
  String status;
  String message;
  IconData iconData;

  PackagesModel(this.title, this.subtitle, this.price, this.cardNo,
      this.dateTime, this.message,
      {this.iconData, this.status});
}
