import 'package:famcare/PopsComponents/MessagesComponents.dart';
import 'package:famcare/Utils/StaticData.dart';
import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class FamAlertDialog {
  static show({
    BuildContext context,
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
        child: FamAlertDialogComponent(
          imagePath: image,
          mainTitle: title,
          subTitle: description,
          disappearAuto: disappearAuto,
          specificComponent: child,
          buttons: buttons,
        ),
      ),
    ).show(
      context,
      transitionType: DialogTransitionType.Shrink,
    );
  }
}

class FamAlertDialogComponent extends StatefulWidget {
  final bool disappearAuto;
  final String imagePath;
  final String mainTitle;
  final String subTitle;
  final Widget specificComponent;
  final List<Widget> buttons;

  FamAlertDialogComponent({
    Key key,
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
                  if (widget.imagePath != null) SizedBox(height: 16),
                  if (widget.imagePath != null)
                    Container(
                      // todo extract this logic to a FCImage (FC = FamCare)
                      child: (widget.imagePath.contains('http'))
                          ? Image.network(
                              widget.imagePath,
                              fit: BoxFit.contain,
                              height: screenWidth / 4,
                              width: screenWidth,
                            )
                          : Image.asset(
                              widget.imagePath,
                              fit: BoxFit.contain,
                              height: screenWidth / 1.9,
                              width: screenWidth,
                            ),
                    ),
                  MessagesComponents(
                      title: widget.mainTitle,
                      // TODO try to use a custom famcare theme text style
                      // style: Theme.of(context).fcTextTheme.title
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      fontFamily: 'Famtree-Medium',
                      width: screenWidth,
                      // todo try to use margin with the bottom widget not the top widget
                      margin: widget.subTitle != null
                          ? EdgeInsets.only(top: 36, bottom: 8)
                          : EdgeInsets.only(top: 8, bottom: 32)),
                  // todo replace if with visibility?? R&D best practices
                  if (widget.subTitle != null)
                    MessagesComponents(
                      title: widget.subTitle,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      heightText: 1.4,
                      width: screenWidth / 1.7,
                      margin: EdgeInsets.only(top: 8, bottom: 22),
                    ),
                  if (widget.specificComponent != null)
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
      ),
    );
  }
}
