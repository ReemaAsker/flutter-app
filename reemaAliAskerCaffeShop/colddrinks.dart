import 'package:apptest/description.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(ColdDrinks());

class ColdDrinks extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<ColdDrinks> {
  final List<String> imageList = [
    'cola.png',
    'strawJuice.png',
    'orange.png',
  ];
  final List<String> imageDesc = [
    "A can of regular cola contains seven teaspoons of sugar (35g), so if you drink this regularly, \n" +
        'Preparation time: 5-10 minutes\n' +
        'Price: 5 dollar',
    "Strawberry Juice is a refreshing fresh fruit juice that is full of vitamin C and antioxidants and lot " +
        "of invigorating flavor. Apart from fresh and ripe strawberries, this recipe also uses lime juice to make it tantalizing.\n" +
        'Preparation time: 10 minutes\n' +
        'Price: 20 dollar',
    "Stick to 150mls and a glass of pure, unsweetened juice can count as one of your " +
        "5 a day. But be aware that even though fruit juice will come with vitamins\n" +
        'Preparation time: 10 minutes\n' +
        'Price: 20 dollar',
  ];

  @override
  Widget build(BuildContext context) {
    var title = "Cold Drinks ";
    int i = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromARGB(255, 198, 154, 105),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              'Cold drinks',
              style: TextStyle(
                color: Color.fromARGB(255, 198, 154, 105),
                fontSize: 25,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: CarouselSlider(
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true),
                items: imageList
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: GestureDetector(
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Image.asset(
                                  e,
                                  width: 350,
                                  height: 400,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => description(title,
                                          imagename: e, desc: imageDesc[i++])));
                            },
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
