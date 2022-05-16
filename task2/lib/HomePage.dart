import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st CARD
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  child: Card(
                    child: Column(
                      children: const [Text("**** 4013"), Text("\$2,562")],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 400,
                ),
              ),

              //2nd CARD
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  child: Card(
                    child: Column(
                      children: const [Text("**** 1941"), Text("\$144")],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.red,
                  ),
                  width: double.infinity,
                  height: 400,
                ),
              ),

              //3rd CARD
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  child: Card(
                    child: Column(
                      children: const [Text("**** 2567"), Text("\$2,56")],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.deepOrange,
                  ),
                  width: double.infinity,
                  height: 400,
                ),
              ),
            ],
            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              aspectRatio: 3 / 2,
            ),
          ),
        ],
      ),
    );
  }
}
