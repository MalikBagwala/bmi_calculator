import "package:flutter/material.dart";

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  RoundIconButton({this.onPressed, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        constraints: BoxConstraints.tightFor(width: 46.0, height: 46.0),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        onPressed: onPressed,
        child: Icon(icon),
      ),
    );
  }
}
