import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Mytask2(),
    );
  }
}

class Mytask2 extends StatefulWidget {
  const Mytask2({Key? key}) : super(key: key);

  @override
  State<Mytask2> createState() => _Mytask2State();
}

class _Mytask2State extends State<Mytask2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.yellow, width: 50)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Your",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Text(
              "Cards",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                  items: [
                    //1st CARD
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Container(
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 20.0,
                                    color: Colors.redAccent[700],
                                  ),
                                  const Positioned(
                                    child: Icon(
                                      Icons.circle,
                                      size: 20.0,
                                      color: Colors.yellowAccent,
                                    ),
                                    left: 10,
                                  ),
                                ],
                              ),
                              Text("**** 4013"),
                              Text("\$562",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18))
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Colors.white,
                        ),
                        width: 500,
                        height: 800,
                      ),
                    ),

                    //2nd CARD
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Container(
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 20.0,
                                    color: Colors.redAccent[700],
                                  ),
                                  const Positioned(
                                    child: Icon(
                                      Icons.circle,
                                      size: 20.0,
                                      color: Colors.yellowAccent,
                                    ),
                                    left: 10,
                                  ),
                                ],
                              ),
                              Text("**** 1941"),
                              Text("\$3678",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18))
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.red,
                        ),
                        width: 500,
                        height: 800,
                      ),
                    ),

                    //3rd CARD
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Container(
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 20.0,
                                    color: Colors.redAccent[700],
                                  ),
                                  const Positioned(
                                    child: Icon(
                                      Icons.circle,
                                      size: 20.0,
                                      color: Colors.yellowAccent,
                                    ),
                                    left: 10,
                                  ),
                                ],
                              ),
                              const Text("**** 2567"),
                              const Text("\$560",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18))
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.orange,
                        ),
                        width: 500,
                        height: 800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Container(
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 20.0,
                                    color: Colors.redAccent[700],
                                  ),
                                  const Positioned(
                                    child: Icon(
                                      Icons.circle,
                                      size: 20.0,
                                      color: Colors.yellowAccent,
                                    ),
                                    left: 10,
                                  ),
                                ],
                              ),
                              const Text("**** 2567"),
                              const Text("\$560",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18))
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.blueAccent[700],
                        ),
                        width: 500,
                        height: 800,
                      ),
                    ),
                  ],
                  //Slider Container properties
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.55,
                    height: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Activity",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      OutlinedButton(
                        onPressed: null,
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                        ),
                        child: const Text("History"),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("06 June"),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.yellowAccent,
                          radius: 17,
                          child: Icon(Icons.account_balance_rounded),
                        ),
                      ),
                      Text("McDonald's"),
                      Padding(
                        padding: EdgeInsets.only(left: 90),
                        child: Text(
                          "-\$5.99",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.redAccent[700],
                          radius: 17,
                          child: const Icon(Icons.health_and_safety_outlined),
                        ),
                      ),
                      const Text("Health insurance"),
                      const Padding(
                        padding: EdgeInsets.only(left: 57),
                        child: Text(
                          "\$51.41",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 17,
                          child: Icon(Icons.person),
                        ),
                      ),
                      Text("Transfer"),
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Text(
                          "\$150",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent[700],
                        radius: 17,
                        child: const Icon(Icons.attach_money_outlined),
                      ),
                    ),
                    const Text("Bills"),
                    const Padding(
                      padding: EdgeInsets.only(left: 140),
                      child: Text(
                        "-\$400",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.purpleAccent[700],
                        radius: 17,
                        child: const Icon(Icons.shopping_cart),
                      ),
                    ),
                    const Text("Shopping"),
                    const Padding(
                      padding: EdgeInsets.only(left: 118),
                      child: Text(
                        "-\$40",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      BottomNavigationBar(
                          currentIndex: 0,
                          items: const <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              label: "Card",
                              icon: Icon(Icons.credit_card),
                            ),
                            BottomNavigationBarItem(
                              label: "Balance",
                              icon: Icon(Icons.clean_hands),
                            ),
                            BottomNavigationBarItem(
                              label: "User",
                              icon: Icon(Icons.person),
                            ),
                            BottomNavigationBarItem(
                                label: "Show More",
                                icon: Icon(Icons.more_horiz_rounded),
                                backgroundColor: Colors.black),
                          ],
                          type: BottomNavigationBarType.fixed,
                          selectedItemColor: Colors.black,
                          iconSize: 20,
                          onTap: null,
                          elevation: 5)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
