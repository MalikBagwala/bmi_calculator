import "package:flutter/material.dart";

class CardPrimary extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onTap;
  CardPrimary({@required this.colour, this.cardChild, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        margin: EdgeInsets.all(15.0),
        height: 200,
        child: cardChild,
      ),
    );
  }
}
