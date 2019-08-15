import "package:flutter/material.dart";
import "../constants.dart";

class ContainerButton extends StatelessWidget {
  final Widget routeTo;
  final Widget child;
  ContainerButton({this.child, this.routeTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return routeTo;
            },
          ),
        );
      },
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
