import 'file:///D:/Android%20Calisma%20Flutter/bmi-calculator-flutter-master/lib/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF1D2136),
          scaffoldBackgroundColor: Color(0xFF323244),
        ),
        home: InputPage(),
        routes:{
          '/.':(context)=>InputPage(),
          '/second':(context)=>ResultsPage(),
        },
      ),
    );
  }
}


