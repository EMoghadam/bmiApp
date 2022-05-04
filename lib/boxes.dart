import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class boxes extends StatelessWidget {
  boxes({required this.colour,  this.childcard, this.onPress});

  Color ?colour;
  Widget ?childcard;
  final VoidCallback ?onPress;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration:
        BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
        child: childcard,
      ),
    );
  }
}