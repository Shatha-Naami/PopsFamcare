import 'package:famcare/PackagesWidget/FamPackagesCard.dart';
import 'package:famcare/PackagesWidget/PackagesModel.dart';
import 'package:flutter/material.dart';

class ShowAllPackages extends StatefulWidget {
  @override
  _ShowAllPackagesState createState() => _ShowAllPackagesState();
}

class _ShowAllPackagesState extends State<ShowAllPackages> {
  List<PackagesModel> packagesList = [
    canNotCancelPackagesModel,
    cancellationRefundPackagesModel,
    canceledAndRefundedPackagesModel,
    loadingPackagesModel,
    sessionsCompletedPackagesModel
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          margin: EdgeInsets.only(left: 8,right: 8,top: 44),
          child: ListView.builder(
            itemCount: packagesList.length,
            itemBuilder: (context, i){
              return  FamPackagesCard(
                packagesModel: packagesList[i],
                onTap: () => print('object'),
              );
            },
          ),
        )
      ),
    );
  }

  static PackagesModel canNotCancelPackagesModel = PackagesModel(
      'باقة ٠ 10 جلسات',
      'رصيد مسبق',
      190.2,
      300239,
      "2010-12-12 12:18:06.018950",
      'لا يمكن إلغاء الباقة، لبدئك الجلسات العلاجية');

  static PackagesModel cancellationRefundPackagesModel = PackagesModel(
      'باقة ٠ 3 جلسات',
      'رصيد محول',
      74.2,
      300239,
      "2021-12-09 12:18:06.018950",
      'إلغاء واسترجاع المبلغ',
      status: 'waiting',
      iconData: Icons.clean_hands_rounded);

  static PackagesModel canceledAndRefundedPackagesModel = PackagesModel(
      'جلسة واحدة',
      'دعم من فامكير',
      0.0,
      300239,
      "2021-12-09 12:18:06.018950",
      'تم الإلغاء واسترجاء المبلغ',
      status: 'isCanceled',
      iconData: Icons.image);

  static PackagesModel loadingPackagesModel = PackagesModel('باقة ٠ 3 جلسات',
      'رصيد محول', 150.0, 300239, "2029-09-11 12:18:06.018950", null,
      status: 'isLoading');

  static PackagesModel sessionsCompletedPackagesModel = PackagesModel(
      'باقة ٠ 3 جلسات',
      'رصيد مسبق',
      150.0,
      300239,
      "2029-09-11 12:18:06.018950",
      'تم إتمام الجلسات العلاجية',
      status: 'done',
      iconData: Icons.check);

}
