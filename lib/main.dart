import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Body.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.black54),
            subtitle1: TextStyle(color: Colors.purple)),
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.yellow, accentColor: Colors.purple),
        scaffoldBackgroundColor: Color(0xff0a0e21)),
    darkTheme: ThemeData.dark(),
    home: BmiApp(),
  ));
}
