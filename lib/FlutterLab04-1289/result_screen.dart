import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab01_1289/FlutterLab04-1289/select_gender_screen.dart';

class ResultScreen extends StatefulWidget {
  final String gender;
  final int height;
  final int weight;
  const ResultScreen(
      {super.key,
      required this.gender,
      required this.height,
      required this.weight});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(widget.gender);
    }
    if (kDebugMode) {
      print(widget.height);
    }
    if (kDebugMode) {
      print(widget.weight);
    }

    double height = widget.height.toDouble();
    double meters = height / 100;
      double bmiC = widget.weight / (meters * meters);
   // double scaledValue = bmiC * 100.0;
    double bmi = double.parse(bmiC.toStringAsFixed(1));
// Truncate the decimal part using floor or round (round might include the 4th digit)
   // double bmi = scaledValue.floor().toDouble();

    String bmiCategory;

    if (bmi < 18.5) {
      bmiCategory = "Underweight";
    } else if (bmi >= 18.5 && bmi < 25) {
      bmiCategory = "Normal weight";
    } else if (bmi >= 25 && bmi < 30) {
      bmiCategory = "Overweight";
    } else if (widget.gender == 'Male' && bmi >= 30 && bmi < 35) {
      bmiCategory = "Obesity (Class I)";
    } else if (widget.gender == 'Male' && bmi >= 35) {
      bmiCategory = "Obesity (Class II or III)";
    } else if (widget.gender == 'Female' && bmi >= 30 && bmi < 35) {
      bmiCategory = "Obesity (Class II)";
    } else {
      bmiCategory = "Obesity (Class III)";
    }

    print(bmi);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const GenderScreen()));
          },
        child: const Icon(Icons.refresh),),
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.pink.shade200,
            Colors.pink.shade300,
            Colors.deepPurple.shade300
          ])),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(200),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.deepPurple,
                            blurRadius: 40,
                            offset: Offset(6, 10))
                      ]),
                  child: Center(
                    child: Text(
                      '$bmi',
                      style:
                          const TextStyle(fontWeight: FontWeight.w300, fontSize: 100),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Your weight suggests that you are ',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      bmiCategory,
                      style:
                          const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
