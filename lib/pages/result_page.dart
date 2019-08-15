import 'package:bmi_calculator/components/cardPrimary.dart';
import 'package:bmi_calculator/components/containerButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import "package:flutter/material.dart";

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Results",
          ),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "Your Result",
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: CardPrimary(
                colour: kInactiveColour,
                cardChild: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Text(
                        "OVERWEIGHT",
                        style: TextStyle(
                          color: Colors.teal.shade400,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        "26.7",
                        style: TextStyle(
                          fontSize: 90.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "You have a higher than normal body weight. Try to exercise more. ",
                        style: TextStyle(fontSize: 17.0),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            ContainerButton(
              child: Text(
                "RE-CALCULATE",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              routeTo: InputPage(),
            )
          ],
        ),
      ),
    );
  }
}
