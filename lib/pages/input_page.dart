import 'package:bmi_calculator/components/containerButton.dart';
import 'package:bmi_calculator/components/roundIconButton.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "../components/cardPrimary.dart";
import "../components/cardContent.dart";
import "../constants.dart";
import "../utils/BMI.dart";

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  double _heightSelected = 170.0;
  double _weight = 60.0;
  double _age = 25.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CardPrimary(
                      onTap: () =>
                          setState(() => {selectedGender = Gender.male}),
                      colour: selectedGender == Gender.male
                          ? kActiveColour
                          : kInactiveColour,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.mars,
                        cardTitle: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardPrimary(
                      onTap: () =>
                          setState(() => {selectedGender = Gender.female}),
                      colour: selectedGender == Gender.female
                          ? kActiveColour
                          : kInactiveColour,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.venus,
                        cardTitle: "FEMALE",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CardPrimary(
                      colour: kInactiveColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "HEIGHT",
                            style: kLabelStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                _heightSelected.round().toString(),
                                style: kNumberStyle,
                              ),
                              Text(
                                "cm",
                                style: kLabelStyle,
                              )
                            ],
                          ),
                          Slider(
                            value: _heightSelected,
                            min: 120.0,
                            max: 220.0,
                            activeColor: kBottomContainerColour,
                            inactiveColor: Color(0xFF8d8e98),
                            onChanged: (double height) {
                              setState(() {
                                _heightSelected = height;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CardPrimary(
                      colour: kInactiveColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: kLabelStyle,
                          ),
                          Text(
                            _weight.round().toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    _weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    _weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardPrimary(
                      colour: kInactiveColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "AGE",
                            style: kLabelStyle,
                          ),
                          Text(
                            _age.round().toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    _age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    _age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            ContainerButton(
              child: Text(
                "CALCULATE",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                BMI bmi = BMI(height: _heightSelected, weight: _weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultPage(
                        bmiText: bmi.calculateBMI(),
                        result: bmi.evaluateResult(),
                        interpretation: bmi.getInterpretation(),
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
