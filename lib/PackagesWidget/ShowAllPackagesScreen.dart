import 'dart:convert';
import 'package:famcare/PackagesWidget/FamPackagesCard.dart';
import 'package:famcare/PackagesWidget/models/PackagesModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowAllPackages extends StatefulWidget {
  @override
  _ShowAllPackagesState createState() => _ShowAllPackagesState();
}

class _ShowAllPackagesState extends State<ShowAllPackages> {
  Map<String, dynamic> mapPackageData;
  PackageModel packageModel;

  void loadJsonData() async {
    var response = await rootBundle.loadString('assets/json/packages.json');
    setState(() {
      mapPackageData = json.decode(response);
      packageModel = PackageModel.fromJson(mapPackageData);
    });
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 8, right: 8, top: 44),
              child: ListView.builder(
                itemCount: packageModel == null ? 0 : packageModel.data.length,
                itemBuilder: (context, i) {
                  return FamPackagesCard(
                    packagesModel: packageModel.data[i],
                  );
                },
              ),
            ),
            if (packageModel == null)
              Center(
                child: SizedBox(
                  height: 60.0,
                  width: 60.0,
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff7F7FF8)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
