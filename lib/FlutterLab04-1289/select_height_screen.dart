import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  List<int> heightValues =
      List.generate(250, (index) => index + 1); // Start from 1
  int selectedHeight1 = 125; // Default selected age
  bool isHeightSelected = false; // Flag to track if an age is selected
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    // Calculate the index of the selected height based on scroll position
    double itemHeight = 20;
    int selectedIndex = (_scrollController.offset / itemHeight).round();

    if (selectedIndex >= 0 && selectedIndex < heightValues.length) {
      int heightToSelect = heightValues[selectedIndex];

      // Check if the height with the desired text color is within a certain range
      if (heightToSelect >= 0 && heightToSelect <= 100) {
        setState(() {
          selectedHeight1 = heightToSelect;
          isHeightSelected = true;
        });
      } else {
        // Height not within the desired range, reset the flag
        setState(() {
          isHeightSelected = false;
        });
      }
    }
  }

//----------------------------------------------------------
  int meter = 100;

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
            height: 400,
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
              //  dragStartBehavior: DragStartBehavior.down,
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: heightValues.length,
                  itemBuilder: (context, index) {
                    int currentHeight = heightValues[index];
                    bool isCenter = currentHeight == selectedHeight1;
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedHeight1 = currentHeight;
                          isHeightSelected =
                              true; // Set the flag to true when an age is selected
                        });
                      },
                      child: isCenter
                          ? Container(
                              height: 400,
                              width: 250,
                              margin: const EdgeInsets.only(left: 5, right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: LinearGradient(colors: [
                                    Colors.pinkAccent.shade200,
                                    Colors.pink.shade100
                                  ])),
                              child: Center(
                                  child: Text(
                                "$currentHeight",
                                style: const TextStyle(
                                    fontSize: 100, fontWeight: FontWeight.w700),
                              )),
                            )
                          : Container(
                              height: 200,
                              width: 100,
                              margin: const EdgeInsets.only(left: 5, right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: LinearGradient(colors: [
                                    Colors.grey.shade200,
                                    Colors.grey.shade100
                                  ])),
                              child: Center(
                                  child: Text(
                                "$currentHeight",
                                style: const TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.w300),
                              )),
                            ),
                    );
                  }),
            ),
          ),

        ],
      ),
    );
  }
}
