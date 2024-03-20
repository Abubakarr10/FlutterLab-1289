import 'package:flutter/material.dart';

class DetailViewScreen extends StatefulWidget {
  final String title;
  final String subtitle;
  final String rate;
  final String imagePath;
  const DetailViewScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.rate,
    required this.imagePath,
  });

  @override
  State<DetailViewScreen> createState() => _DetailViewScreenState();
}

class _DetailViewScreenState extends State<DetailViewScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // === Image ===
          Container(
            height: 450,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.red.shade700,
                  Colors.black,
                  Colors.blue.shade900
                ]),
                image: DecorationImage(
                    image: AssetImage(widget.imagePath),
                    fit: BoxFit.fitHeight)),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              size: 18,
                            )),
                      ),
                    ),
                    Image.asset(
                      'assets/images/menu.png',
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),

          // === Description ===
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 390),
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.subtitle,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w200,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade600,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        counter--;
                                      });
                                    },
                                    child: const Text(
                                      '-',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Text(
                                    '$counter',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        counter++;
                                      });
                                    },
                                    child: const Text(
                                      '+',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              widget.rate,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Product Description',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Introducing the ${widget.title}, a fusion of luxury and performance that redefines automotive excellence. With its powerful engine delivering exhilarating acceleration and precise handling, the ${widget.title} offers a thrilling driving experience. Inside, the lavish interior pampers occupants with premium materials, customizable ambient lighting, and advanced tech features like a touchscreen infotainment system and comprehensive safety suite. The sleek design not only turns heads but also enhances fuel efficiency, making the ${widget.title} a standout choice for those seeking luxury, performance, and innovation in one exceptional package.',
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * .29,
                    ),

                    /// >>>> Bottom Widgets <<<<
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /// >>>> Favourite Button <<<<
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  )),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),

                            /// >>>> Bottom Right Button <<<<
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all<Size>(
                                  const Size(250, 50),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.black,
                                ),
                              ),
                              child: Container(
                                width: 250,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.red.shade700,
                                      Colors.blue.shade700,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      20), // Adjust the border radius as needed
                                ),
                                child: const Center(
                                  child: Text(
                                    'BUY NOW',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
