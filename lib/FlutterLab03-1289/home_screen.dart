import 'package:flutter/material.dart';
import 'package:flutter_lab01_1289/FlutterLab03-1289/detail_view_screen.dart';
import '../components/widgets/left_cards_widget.dart';
import '../components/widgets/right_cards_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Map carImage = {
    'assets/images/nissan_gtr.png': 'assets/images/rolls_royal.png',
    'assets/images/tesla_model_s.png': 'assets/images/toyota_fortuner.png',
  };

  Map carImages2 = {
    'assets/images/bmw_m4.png': 'assets/images/bugatti_veyron.png',
    'assets/images/car_bmw_i8.png': 'assets/images/mercedes-suv.png',
  };

  Map carsNames = {
    'Nissan GTR': 'Rolls Royal',
    'Tesla Model S': 'Toyota Fortuner',
  };

  Map carNames2 = {
    'BMW M4': 'Bugatti Veyron',
    'BMW i8': 'Mercedes GLA',
  };

  Map subtitleCars = {
    '2019': '2022',
    '2023': '2018',
  };

  Map subtitleCars2 = {
    '2015': '2013',
    '2020': '2021',
  };

  Map rates = {
    '\$250,000.0': '\$600,000.2',
    '\$178,000.5': '\$25,000.4',
  };

  Map rates2 = {
    '\$48,000.0': '\$680,000.2',
    '\$300,000.0': '\$60,000.9',
  };

  @override
  Widget build(BuildContext context) {
    moveTo(var where) {
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => where));
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// === Custom Top App Bar ===
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 18,
                          color: Colors.grey,
                        )),
                  ),
                  Image.asset(
                    'assets/images/menu.png',
                    height: 30,
                    width: 30,
                    color: Colors.grey,
                  )
                ],
              ),
            ),

            // === Fruits and berries (Text) ===
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                'Vehicles',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
            ),

            // === Search Bar ===
            Container(
              height: 60,
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                title: Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            /// === ListView Builder ===
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // === Left Column Widget ====
                          LeftCardsWidget(
                              title: carsNames.keys.elementAt(index),
                              subtitle: subtitleCars.keys.elementAt(index),
                              rate: rates.keys.elementAt(index),
                              imagePath: carImage.keys.elementAt(index),
                              onTapi: () {
                                moveTo(DetailViewScreen(
                                  title: carsNames.keys.elementAt(index),
                                  subtitle: subtitleCars.keys.elementAt(index),
                                  rate: rates.keys.elementAt(index),
                                  imagePath: carImage.keys.elementAt(index),
                                ));
                              },
                              title2: carsNames.values.elementAt(index),
                              subtitle2: subtitleCars.values.elementAt(index),
                              rate2: rates.values.elementAt(index),
                              imagePath2: carImage.values.elementAt(index),
                              onTapi2: () {
                                moveTo(DetailViewScreen(
                                  title: carsNames.values.elementAt(index),
                                  subtitle: subtitleCars.values.elementAt(index),
                                  rate: rates.values.elementAt(index),
                                  imagePath: carImage.values.elementAt(index),
                                ));
                              }),

                          const SizedBox(
                            width: 20,
                          ),

                          // === Right Column Widget ====
                          RightCardsWidget(
                              title: carNames2.keys.elementAt(index),
                              subtitle: subtitleCars2.keys.elementAt(index),
                              rate: rates2.keys.elementAt(index),
                              imagePath: carImages2.keys.elementAt(index),
                              onTapi: () {
                                moveTo(DetailViewScreen(
                                  title: carNames2.keys.elementAt(index),
                                  subtitle: subtitleCars2.keys.elementAt(index),
                                  rate: rates2.keys.elementAt(index),
                                  imagePath: carImages2.keys.elementAt(index),
                                ));
                              },
                              title2: carNames2.values.elementAt(index),
                              subtitle2: subtitleCars2.values.elementAt(index),
                              rate2: rates2.values.elementAt(index),
                              imagePath2: carImages2.values.elementAt(index),
                              onTapi2: () {
                                moveTo(DetailViewScreen(
                                  title: carNames2.values.elementAt(index),
                                  subtitle: subtitleCars2.values.elementAt(index),
                                  rate: rates2.values.elementAt(index),
                                  imagePath: carImages2.values.elementAt(index),
                                ));
                              }),
                        ],
                      ),
                    );
                  }),
            ),

            const SizedBox(
              height: 10,
            ),
          ]),
    );
  }
}
