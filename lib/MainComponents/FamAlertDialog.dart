import 'package:famcare/PopsComponents/MessagesComponents.dart';
import 'package:famcare/Utils/StaticData.dart';
import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class FamAlertDialog {
  static showDialog(
      {bool addImageOption,
      bool addSpecificComponentOption,
      BuildContext context,
      double heightContainer,
      String imagePath, bool disappearAuto,
      String mainTitle,
      String subTitle,
      Widget specificComponent,
      List<Widget> buttons}) {
    NAlertDialog(
      title: null,
      content: Container(
        height: heightContainer,
        width: widthScreen,
        child: FamAlertDialogComponent(
            addImageOption: addImageOption,
            addSpecificComponentOption: addSpecificComponentOption,
            imagePath: imagePath,
            mainTitle: mainTitle,
            subTitle: subTitle,disappearAuto: disappearAuto,
            specificComponent: specificComponent,
            buttons: buttons),
      ),
      blur: 16,
    ).show(context, transitionType: DialogTransitionType.Shrink);
  }
}

class FamAlertDialogComponent extends StatefulWidget {
  final bool addImageOption;
  final bool disappearAuto;
  final bool addSpecificComponentOption;
  final String imagePath;
  final String mainTitle;
  final String subTitle;
  final Widget specificComponent;
  final List<Widget> buttons;

  FamAlertDialogComponent({
    Key key,
    this.addImageOption,
    this.addSpecificComponentOption = false,
    this.disappearAuto = false,
    this.imagePath,
    this.mainTitle,
    this.subTitle,
    this.specificComponent,
    this.buttons,
  }) : super(key: key);

  @override
  _FamAlertDialogComponentState createState() =>
      _FamAlertDialogComponentState();
}

class _FamAlertDialogComponentState extends State<FamAlertDialogComponent> {
  @override
  Widget build(BuildContext context) {
    if (widget.disappearAuto) Future.delayed(Duration(seconds: 3), () {
        Navigator.of(context).pop(true);
      });
    return Scaffold(
        body: Container(
      child: ListView(
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        children: [
          Container(
            width: widthScreen,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white),
            child: Column(
              children: [
                if (widget.addImageOption) SizedBox(height: 16),
                if (widget.addImageOption)
                  Container(
                      child: (widget.imagePath.contains('http'))
                          ? Image.network(widget.imagePath,
                              fit: BoxFit.contain,
                              height: widthScreen / 4,
                              width: widthScreen)
                          : Image.asset(widget.imagePath,
                              fit: BoxFit.contain,
                              height: widthScreen / 1.9,
                              width: widthScreen)),
                MessagesComponents(
                    title: widget.mainTitle,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: 'Famtree-Medium',
                    width: widthScreen,
                    margin: widget.subTitle != null
                        ? EdgeInsets.only(top: 36, bottom: 8)
                        : EdgeInsets.only(top: 8, bottom: 32)),
                if (widget.subTitle != null)
                  MessagesComponents(
                      title: widget.subTitle,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      heightText: 1.4,
                      width: widthScreen / 1.7,
                      margin: EdgeInsets.only(top: 8, bottom: 22)),
                if (widget.addSpecificComponentOption)
                  Container(
                      padding: EdgeInsets.all(0),
                      color: Color(0xffF4F5F8),
                      child: widget.specificComponent),
                Container(
                  padding: EdgeInsets.all(0),
                  color: Color(0xffF4F5F8),
                  child: Column(children: widget.buttons),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
