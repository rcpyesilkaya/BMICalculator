import 'package:flutter/material.dart';

import '../consts.dart';

class BottomWidget extends StatelessWidget {

  BottomWidget({this.function,this.text});

  final Function function;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        child: Center(
            child:text ),
        color: botMenuColor,
        margin: EdgeInsets.only(top: 10.0),
        height: botMenuHeight,
        width: double.infinity,
      ),
    );
  }
}