import 'package:bmiapp/Calculation_Brain.dart';
import 'package:bmiapp/Resoult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BoxIcon.dart';
import 'Button.dart';
import 'boxes.dart';

var colorfram = gender ? colorBoxClick : colorBoxUnclick;
var colorBoxUnclick = Colors.white70;
var colorBoxClick = Colors.white38;
const colorbuttem = Colors.yellowAccent;
const heigthButtom = 70.0;
bool gender = true;
int height = 180;
int weight = 60;
int age = 20;

class BmiApp extends StatefulWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI APP"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: boxes(
                onPress: () {
                  setState(() {
                    gender = true;
                  });
                },
                colour: gender ? colorBoxClick : colorBoxUnclick,
                childcard: BoxIcon(
                  icons: FontAwesomeIcons.mars,
                  name: "Mail",
                ),
              )),
              Expanded(
                  child: boxes(
                onPress: () {
                  setState(() {
                    gender = false;
                  });
                },
                colour: gender ? colorBoxUnclick : colorBoxClick,
                childcard: BoxIcon(
                  icons: FontAwesomeIcons.venus,
                  name: "Femail",
                ),
              )),
            ],
          )),
          Expanded(
              child: boxes(
            colour: colorBoxUnclick,
            childcard: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Height",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style: const TextStyle(
                          fontSize: 60, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "cm",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      overlayColor: Colors.white,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30)),
                  child: Slider(
                      min: 140,
                      max: 220,
                      activeColor: const Color(0xffEb1555),
                      inactiveColor: const Color(0xff0a0e21),
                      value: height.toDouble(),
                      onChanged: (double showHeight) {
                        setState(() {
                          height = showHeight.toInt();
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: boxes(
                colour: colorBoxUnclick,
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "WEIGHT",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      weight.toString(),
                      style: const TextStyle(
                          fontSize: 60, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButtom(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RoundIconButtom(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: boxes(
                colour: colorBoxUnclick,
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "AGE",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      age.toString(),
                      style: const TextStyle(
                          fontSize: 60, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButtom(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RoundIconButtom(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          Botton(
            onPress: () {
              Calculation_Brain cal =
                  Calculation_Brain(weight: weight, height: height);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resoult(
                            bmi: cal.CalculationBmi(),
                            situation: cal.getResoult(),
                            Description: cal.getDescription(),
                          )));
            },
            textName: "Calculation",
          )
        ],
      ),
    );
  }
}

class RoundIconButtom extends StatelessWidget {
  RoundIconButtom({required this.icon, this.onPressed});

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      elevation: 6.0,
      disabledElevation: 6.0,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 56.5, height: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.purple[700],
    );
  }
}
