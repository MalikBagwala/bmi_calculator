import '../components/cardPrimary.dart';
import '../components/containerButton.dart';
import '../constants.dart';
import "package:flutter/material.dart";

class ResultPage extends StatefulWidget {
  final String interpretation;
  final String bmiText;
  final String result;
  ResultPage({this.interpretation, this.bmiText, this.result});
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
                        this.widget.result.toUpperCase(),
                        style: TextStyle(
                          color: Colors.teal.shade400,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        this.widget.bmiText,
                        style: TextStyle(
                          fontSize: 90.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        this.widget.interpretation,
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
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
