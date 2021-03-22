import 'package:famcare/PopsWiedget/FCImage.dart';
import 'package:famcare/PopsWiedget/PopsComponents/FamMessagesInfo.dart';
import 'package:famcare/PopsWiedget/Utils/StaticData.dart';
import 'package:famcare/main.dart';
import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class FamAlertDialog extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final Widget child;
  final List<Widget> buttons;
  final bool disappearAuto;

  FamAlertDialog({
    Key key,
    this.image,
    this.title,
    this.description,
    this.child,
    this.buttons,
    this.disappearAuto = false,
  }) : super(key: key);

  @override
  _FamAlertDialogState createState() => _FamAlertDialogState();

  static show({
    double height,
    String image,
    String title,
    String description,
    Widget child,
    List<Widget> buttons,
    bool disappearAuto = false,
  }) {
    NAlertDialog(
      title: null,
      dialogStyle: DialogStyle(
        titlePadding: EdgeInsets.all(0),
        contentPadding: EdgeInsets.all(0),
      ),
      blur: 16,
      content: Container(
        height: height,
        width: screenWidth,
        // TODO merge FamAlertDialogComponent and FamAlertDialog into single class
        // TODO rename the param as we did for the parent widget
        child: FamAlertDialog(
          image: image,
          title: title,
          description: description,
          disappearAuto: disappearAuto,
          child: child,
          buttons: buttons,
        ),
      ),
    ).show(
      key.currentContext,
      transitionType: DialogTransitionType.Shrink,
    );
  }
}

class _FamAlertDialogState extends State<FamAlertDialog> {
  @override
  void initState() {
    super.initState();
    if (widget.disappearAuto)
      Future.delayed(Duration(seconds: 3), () {
        Navigator.of(context).pop(true);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          children: [
            Container(
              width: screenWidth,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  // todo remove the duplicated if statements
                  Visibility(
                      child: FCImage(image: widget.image),
                      visible: widget.image != null),
                  FamMessagesInfo(
                    title: widget.title,
                    // TODO try to use a custom famcare theme text style
                    style: Theme.of(context).textTheme.title,
                    width: screenWidth,
                    // todo try to use margin with the bottom widget not the top widget
                    margin: EdgeInsets.only(top: 36, bottom: 18),
                  ),
                  // todo replace if with visibility?? R&D best practices
                  Visibility(
                    visible: widget.description != null,
                    child: FamMessagesInfo(
                      title: widget.description,
                      style: Theme.of(context).textTheme.display4,
                      width: screenWidth / 1.7,
                      margin: EdgeInsets.only(top: 0, bottom: 24),
                    ),
                  ),
                  Visibility(
                    visible: widget.child != null,
                    child: Container(
                        padding: EdgeInsets.all(0),
                        color: Color(0xffF4F5F8),
                        child: widget.child),
                  ),
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
      ),
    );
  }
}
