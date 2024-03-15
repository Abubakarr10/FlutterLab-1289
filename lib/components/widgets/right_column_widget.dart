import 'package:flutter/material.dart';

class RightColumnWidget extends StatelessWidget {
  const RightColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          // === First Right Widget ====
          Container(
            height: 300, width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.greenAccent.shade100,
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(image: AssetImage('assets/images/pineapple.png')),
            ),
            child: Stack(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Pineapple',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('1kg',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("\$25.4",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(30)
                        )
                    ),
                    child: const Icon(Icons.add,color: Colors.white,size: 30,),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          // === Second Right Widget ====
          Container(
            height: 250, width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.pinkAccent.shade100,
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(image: AssetImage('assets/images/banana.png')),
            ),
            child: Stack(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Banana',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('1kg',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("\$3.9",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(30)
                        )
                    ),
                    child: const Icon(Icons.add,color: Colors.white,size: 30,),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
