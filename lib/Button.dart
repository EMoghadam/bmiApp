import 'package:flutter/material.dart';

import 'Body.dart';
import 'Resoult.dart';

class Botton extends StatelessWidget {
Botton ({ this.onPress, required this.textName});
final VoidCallback ?onPress;
final String textName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        alignment: Alignment.center,
        color: colorbuttem,
        width: double.infinity,
        height: heigthButtom,
        margin: const EdgeInsets.only(top: 10),
        child:  Text(textName,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
