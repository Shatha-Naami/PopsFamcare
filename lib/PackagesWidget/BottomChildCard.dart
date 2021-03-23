import 'package:flutter/material.dart';

class BottomChildCard extends StatelessWidget {
  String financialText;
  String status;

  BottomChildCard({this.financialText, this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          financialText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.display3.copyWith(
                color: getSpecificColor(status),
              ),
        ),
        SizedBox(width: 12),
        Visibility(
          visible: getSpecificIcon(status) != null,
          child: Icon(
            getSpecificIcon(status),
            color: getSpecificColor(status),
          ),
        ),
      ],
    );
  }

  /// must know all status to complete switch
  Color getSpecificColor(String status) {
    switch (status) {
      case 'isCancelled':
        return Color(0xffDE4343);
        break;
      case 'refunded':
        return Color(0xff3A3855);
        break;
      case 'completed':
        return Color(0xff3A3855);
        break;

      default:
        return Color(0xffB9BECC);
    }
  }

  /// must know all status to complete switch
  IconData getSpecificIcon(String status) {
    switch (status) {
      case 'isCancelled':
        return Icons.clean_hands_sharp;
        break;
      case 'refunded':
        return Icons.credit_card;
        break;
      case 'completed':
        return Icons.check;
        break;

      default:
        return null;
    }
  }
}
