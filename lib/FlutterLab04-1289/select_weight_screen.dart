import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lab01_1289/FlutterLab04-1289/result_screen.dart';

class WeightScreen extends StatefulWidget {
  final String gender;
  final int height;
  int? weight;
  WeightScreen({super.key, required this.gender, required this.height});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {


  List<int> weightValues =
      List.generate(160, (index) => index + 1); // Start from 1

  int selectedHeight1 = 125; // Default selected age
  bool isHeightSelected = false; // Flag to track if an age is selected

  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: 0);
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              Text(
                "current weight",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.pinkAccent),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Text(
              'We will use this type of data to give you a better diet type for you',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .2,
          ),

          SizedBox(
            height: 400,
            child: RotatedBox(
              quarterTurns: 3,
              child: ListWheelScrollView(
                  itemExtent: 80,
                  controller: scrollController,
                  physics: const FixedExtentScrollPhysics(),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedIndex = index;
                      widget.weight = weightValues[index];
                    });
                  },
                  children: List.generate(weightValues.length, (index) {
                    int currentHeight = index;
                    bool isCenter = currentHeight == selectedIndex;
                    return RotatedBox(
                        quarterTurns: 1,
                        child: Column(
                          children: [
                            Text(
                              '|',
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: isCenter
                                      ? FontWeight.bold
                                      : FontWeight.w200),
                            ),
                            Text(
                              weightValues[index].toString(),
                              style: TextStyle(
                                  fontSize: isCenter ? 22 : 18,
                                fontWeight: isCenter? FontWeight.bold : FontWeight.normal,
                                color: isCenter? Colors.pinkAccent : Colors.black
                              ),
                            )
                          ],
                        ));
                  })),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultScreen(
                gender: widget.gender,
                height: widget.height,
                weight: widget.weight!,
              )));
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(
                const Size(250, 50),
              ),
              backgroundColor:
              MaterialStateProperty.all<Color>(
                Colors.pinkAccent,
              ),
            ),
            child: const Text('Next',style: TextStyle(color: Colors.white,fontSize: 20),),
          )
        ],
      ),
    );
  }
}
