import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab01_1289/FlutterLab04-1289/select_weight_screen.dart';

class HeightScreen extends StatefulWidget {
  final String gender;
  int? height;
  HeightScreen({super.key, this.height=0, required this.gender});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  List<int> values01 =
      List.generate(261, (index) => index + 100); // Start from 1


  int selectedHeight1 = 125; // Default selected age
  bool isHeightSelected = false; // Flag to track if an age is selected




  final FixedExtentScrollController scrollController =
  FixedExtentScrollController(initialItem: 0);
  int selectedIndex = 0;

//----------------------------------------------------------


  @override
  Widget build(BuildContext context) {
    var heightValues = values01.sublist(10, 161);

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
                "How ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              Text(
                "tall ",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.pinkAccent),
              ),
              Text(
                "are you?",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
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
            height: MediaQuery.sizeOf(context).height * .2,
            width: MediaQuery.sizeOf(context).width,
            child: RotatedBox(
              quarterTurns: 3,
              child: ListWheelScrollView(
                  itemExtent: 170,
                  controller: scrollController,
                  physics: const FixedExtentScrollPhysics(),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedIndex = index;
                      widget.height = heightValues[index];
                    });
                  },
                  children: List.generate(heightValues.length, (index) {
                    int currentHeight = index;
                    bool isCenter = currentHeight == selectedIndex;
                    return isCenter
                        ? RotatedBox(
                            quarterTurns: 1,
                            child: Container(
                              margin:
                                  const EdgeInsets.only(left: 5, right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: LinearGradient(colors: [
                                    Colors.pinkAccent.shade200,
                                    Colors.pink.shade100
                                  ])),
                              child: Center(
                                  child: Text(
                                heightValues[index].toString(),
                                style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          )
                        : RotatedBox(
                      quarterTurns: 1,
                      child: Container(
                              margin: const EdgeInsets.only(left: 5, right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: LinearGradient(colors: [
                                    Colors.grey.shade200,
                                    Colors.grey.shade100
                                  ])),
                              child: Center(
                                  child: Text(
                                    heightValues[index].toString(),
                                style: const TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.w300),
                              )),
                            ),
                        );
                  })),
            ),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * .15,),

          // Next Button
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> WeightScreen(
                gender: widget.gender,
                height: widget.height!,
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
