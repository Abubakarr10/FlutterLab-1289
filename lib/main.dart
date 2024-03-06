

import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterLab01());
}

class FlutterLab01 extends StatelessWidget {
  const FlutterLab01({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var widthMQ = MediaQuery.sizeOf(context).width * 1;
    var bgColor = const LinearGradient(colors: [Colors.deepPurple, Colors.deepOrange],
    begin: FractionalOffset.topLeft, end: Alignment.bottomRight
    );
    var bgColor2 = const LinearGradient(colors: [Colors.deepOrange, Colors.deepPurple],
        begin: FractionalOffset.topLeft, end: Alignment.bottomRight
    );
    return MaterialApp(
      title: 'FlutterLab01-1289',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            "Flutter Lab01 - 1289",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // === First Section ===
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 100,
                      width: widthMQ,
                      decoration: BoxDecoration(
                          gradient: bgColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 12.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home_max_outlined,size: 57, color: Colors.white,),
                              Text(
                                "Home Settings",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                    ),
                  ),
                  SizedBox(
                    width: widthMQ * .02,
                  ),

                  ///<<<Second Section>>>
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 100,
                      width: widthMQ,
                      decoration: BoxDecoration(
                          gradient: bgColor2,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 12.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.wifi,size: 57, color: Colors.white,),
                              Text(
                                "WiFi SetUp",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),

            // <<<Asset Image>>>
            Padding(
              padding: const EdgeInsets.all(12),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: 200,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/pic.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text('Asset Image'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // <<<Network Image>>>
            Padding(
              padding: const EdgeInsets.all(12),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://strapi.dhiwise.com/uploads/618fa90c201104b94458e1fb_639c3c682573ede2ef7e67c9_Best_Flutter_app_development_tools_and_app_builders_OG_image_ac87c76436.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text('Network Image'),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
