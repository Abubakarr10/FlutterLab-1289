import 'package:flutter/material.dart';
import 'package:flutter_lab01_1289/FlutterLab04-1289/result_screen.dart';
import 'package:flutter_lab01_1289/FlutterLab04-1289/select_gender_screen.dart';
import 'package:flutter_lab01_1289/FlutterLab04-1289/select_height_screen.dart';
import 'package:flutter_lab01_1289/FlutterLab04-1289/select_weight_screen.dart';
import 'package:flutter_lab01_1289/lab02_1289.dart';
import 'FlutterLab03-1289/detail_view_screen.dart';
import 'FlutterLab03-1289/home_screen.dart';

void main() {
  runApp(const FlutterLab01());
}

class FlutterLab01 extends StatelessWidget {
  const FlutterLab01({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FlutterLab02-1289',
      debugShowCheckedModeBanner: false,
      home: HeightScreen(),
    );
  }
}
