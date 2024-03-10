import 'package:flutter/material.dart';
import 'package:flutter_lab01_1289/lab02_1289.dart';

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
      home: FlutterLab02(),
    );
  }
}
