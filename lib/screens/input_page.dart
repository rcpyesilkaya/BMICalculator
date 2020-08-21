import 'file:///D:/Android%20Calisma%20Flutter/bmi-calculator-flutter-master/lib/components/bottom_widget.dart';
import 'file:///D:/Android%20Calisma%20Flutter/bmi-calculator-flutter-master/lib/components/reusable_card.dart';
import 'package:bmi_calculator/calcutale_brain.dart';
import 'package:bmi_calculator/components/icon_concet.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum ColorEnum { eMeal, fMeal }

class _InputPageState extends State<InputPage> {
  ColorEnum sColorEnum;
  int height = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          sColorEnum = ColorEnum.eMeal;
                        });
                      },
                      cardChild: IconConcet(
                        iconIc: FontAwesomeIcons.mars,
                        iconTxt: "MEAL",
                      ),
                      colors: sColorEnum == ColorEnum.eMeal
                          ? bodyColorIsSelect
                          : bodyColorUnSelect)),
              Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          sColorEnum = ColorEnum.fMeal;
                        });
                      },
                      cardChild: IconConcet(
                        iconIc: FontAwesomeIcons.venus,
                        iconTxt: "FEMEAL",
                      ),
                      colors: sColorEnum == ColorEnum.fMeal
                          ? bodyColorIsSelect
                          : bodyColorUnSelect)),
            ],
          )),
          Expanded(
              child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: labelTextStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: labelTextStyle2,
                          ),
                          Text(
                            'cm',
                            style: labelTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8d8e98),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFeb1555),
                            overlayColor: Color(0x29eb1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0)),
                        child: Slider(
                            min: 120.0,
                            max: 220.0,
                            value: height.toDouble(),
                            onChanged: (double newDouble) {
                              setState(() {
                                height = newDouble.round();
                              });
                            }),
                      )
                    ],
                  ),
                  colors: bodyColorUnSelect)),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                colors: bodyColorUnSelect,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                      style: labelTextStyle,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      weight.toString(),
                      style: labelTextStyle2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPres: () {
                              setState(() {
                                weight--;
                              });
                            }),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPres: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: ReusableCard(
                colors: bodyColorUnSelect,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AGE',
                      style: labelTextStyle,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      age.toString(),
                      style: labelTextStyle2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPres: () {
                              setState(() {
                                age--;
                              });
                            }),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPres: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),
          BottomWidget(
            function: () {
              CalculateBrain clB =
                  CalculateBrain(weight: weight, height: height);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> ResultsPage(
                    bmiResult: clB.calculateBMI(),
                    interpatation: clB.getInterpatation(),
                    resultText: clB.getResult(),
                  ),
                ),
              );
            },
            text: Text(
              'CALCULATE',
              style: labelTextStyle3,
            ),
          )
        ],
      )),
    );
  }
}
