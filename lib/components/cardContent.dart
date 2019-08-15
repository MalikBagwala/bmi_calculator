import 'package:bmi_calculator/constants.dart';
import "package:flutter/material.dart";

class CardContent extends StatelessWidget {
  final IconData icon;
  final String cardTitle;
  const CardContent({Key key, this.icon, this.cardTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 60.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            cardTitle,
            style: kLabelStyle,
          )
        ],
      ),
    );
  }
}
