import 'package:bmi_calculator/consts.dart';
import 'package:flutter/material.dart';


class IconConcet extends StatelessWidget {

  final IconData iconIc;
  final String iconTxt;

  IconConcet({this.iconIc, this.iconTxt});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconIc,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          iconTxt,
          style: labelTextStyle,)
      ],
    );
  }
}