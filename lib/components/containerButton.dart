import "package:flutter/material.dart";
import "../constants.dart";

class ContainerButton extends StatelessWidget {
  final Function onTap;
  final Widget child;
  ContainerButton({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: child,
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 15.0),
        padding: EdgeInsets.only(bottom: 15.0),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
