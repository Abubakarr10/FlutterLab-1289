import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.pink.shade200,
                  Colors.pink.shade300,
                  Colors.deepPurple.shade300
            ])),
                  ),
                ),
            Align(
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
                          offset: Offset(6, 10)
                        )
                      ]
                    ),
                    child: const Center(
                      child: Text('27.3',style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 100
                      ),),
                    ),
                  ),
                  const SizedBox(height: 60,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Your weight suggests that you are ',style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text('overweight! Aim to lose 3.5kg',style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 20
                      ),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
