import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailViewScreen extends StatefulWidget {
  const DetailViewScreen({super.key});

  @override
  State<DetailViewScreen> createState() => _DetailViewScreenState();
}

class _DetailViewScreenState extends State<DetailViewScreen> {
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
              color: Colors.orangeAccent.shade100,
              image: const DecorationImage(image: AssetImage('assets/images/banana.png'),fit: BoxFit.fitHeight)
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
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
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 390),
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Banana',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                      const Text('1kg',style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            height: 30, width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('-',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                                Text('5',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                                Text('+',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                              ],
                            ),
                          ),
                          const Text('\$5.3',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Text('Product Description',style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
                      const SizedBox(height: 5,),
                      const Text('A banana is a long, curved fruit with a soft, yellow skin when ripe. It belongs to the genus Musa, part of the family Musaceae. Bananas are one of the most popular fruits worldwide, known for their sweet flavor and high nutritional value. They are rich in potassium, vitamin C, vitamin B6, and dietary fiber. Bananas can be eaten raw, added to smoothies, used in baking, or dried for snacks. They are commonly found in tropical regions and are harvested when fully ripe for consumption.',style: TextStyle(fontSize: 18,),),
                    ],
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60, width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 4,
                                color: Colors.deepOrangeAccent.shade100,
                              )
                            ),
                            child: Icon(Icons.favorite,
                              color: Colors.deepOrangeAccent.shade100,),
                          ),
                          ElevatedButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent.shade100),
                                fixedSize: MaterialStateProperty.all<Size>(const Size(200, 50))
                              ),
                              child: const Text('Add to cart',style: TextStyle(color: Colors.black),))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
