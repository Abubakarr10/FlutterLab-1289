import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'components/widgets/card_widget.dart';

class FlutterLab02 extends StatefulWidget {
  const FlutterLab02({super.key});

  @override
  State<FlutterLab02> createState() => _FlutterLab02State();
}

class _FlutterLab02State extends State<FlutterLab02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Lab02 - 1289',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body:  Column(
        children: [
          const SizedBox(
            height: 30,
          ),

          /// >>> Circle Avatar Image <<<
          Container(
            height: 160, width: 160,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                  color: Colors.deepOrange,
                  spreadRadius: 6,
                  offset: Offset(6, 6)
                ),
              ]
            ),
            child: const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          /// >>> Cards <<<
          const CardWidget(
            imageUrl: 'https://upload.wikimedia.org/wikipedia/en/a/a7/God_of_War_4_cover.jpg',
            title: 'GOD OF WAR',
            subtitleOne: 'Year: 2018',
            subtitleTwo: 'Rs: 2,300/-',
            trailingOne: '9.8 Ratings',
            trailingTwo: 'Top Hit Game',
          ),
          const CardWidget(
            imageUrl: 'https://image.api.playstation.com/cdn/EP0006/CUSA01866_00/HGC5Mv190QypRgFuPeUpRLhqsLwW08YF.png?w=440',
            title: 'Need of Speed',
            subtitleOne: 'Year: 2015',
            subtitleTwo: 'Rs: 1,500/-',
            trailingOne: '8.0 Ratings',
          ),
          const CardWidget(
            imageUrl: 'https://image.api.playstation.com/vulcan/ap/rnd/202310/0214/2d303f56b705633886b50c56e34f12de0ff12d0453c10623.png',
            title: 'FC 24',
            subtitleOne: 'Year: 2023',
            subtitleTwo: 'Rs: 14,000/-',
            trailingOne: '9.5 Ratings',
            trailingTwo: 'Top Selling Game',
          ),
        ],
      ),
    );
  }
}
