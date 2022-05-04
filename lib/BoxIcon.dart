import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BoxIcon extends StatelessWidget {
  BoxIcon({required this.icons,  required this.name});

  final  icons;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icons,
          size: 70,
          color: Colors.black54,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          name,
          style: const TextStyle(
              color: Colors.black54,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}