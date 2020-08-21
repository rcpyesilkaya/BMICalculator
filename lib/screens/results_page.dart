import 'file:///D:/Android%20Calisma%20Flutter/bmi-calculator-flutter-master/lib/components/bottom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({this.bmiResult,this.interpatation,this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpatation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Your Result',
                  style: labelTextStyle4,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colors: bodyColorIsSelect,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: labelTextStyle5,
                    ),
                    Text(
                      bmiResult,
                      style: labelTextStyle6,
                    ),
                    Text(
                      interpatation,
                      style: labelTextStyle7,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: BottomWidget(text: Text('RE-CALCULATE'),function: (){
              Navigator.pop(context);
            },))
          ],
        ),
      ),
    );
  }
}
