import 'package:bmiapp/Button.dart';
import 'package:bmiapp/boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Body.dart';

class Resoult extends StatelessWidget {
  final String situation;
  final String bmi;
  final String Description;

  Resoult(
      {required this.situation, required this.bmi, required this.Description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resoult"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                "Your resoult",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: boxes(
              colour: Colors.white70,
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(situation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.green)),
                  Text(bmi,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.w900,
                          color: Colors.black87)),
                  Text(Description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87)),
                ],
              ),
            ),
          ),
          Botton(
              onPress: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => BmiApp()));
              },
              textName: "Re-Calculation")
        ],
      ),
    );
  }
}
