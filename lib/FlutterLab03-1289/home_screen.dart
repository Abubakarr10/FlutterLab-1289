import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/widgets/left_column_widget.dart';
import '../components/widgets/right_column_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// === Custom Top App Bar ===
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40, width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_back_ios_new,size: 18,)),
                  ),
                  Image.asset('assets/images/menu.png',height: 30, width: 30,)
                ],
              ),
            ),

            // === Fruits and berries (Text) ===
            const Padding(
              padding: EdgeInsets.only(left: 20,bottom: 15),
              child: Text('Fruits and berries',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
            ),

            // === Search Bar ===
            Container(
              height: 60,
              margin: const EdgeInsets.only(left: 20,right: 20),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const ListTile(
                leading: Icon(Icons.search),
                title: Text('Search',style: TextStyle(color: Colors.grey),),
              ),
            ),

            /// === ListView Builder ===

            const Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // === Left Column Widget ====
                  LeftColumnWidget(),

                 SizedBox(width: 20,),

                  // === Right Column Widget ====
                  RightColumnWidget(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // === Left Column Widget ====
                  LeftColumnWidget(),

                  SizedBox(width: 20,),

                  // === Right Column Widget ====
                  RightColumnWidget(),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
