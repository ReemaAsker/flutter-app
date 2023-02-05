import 'package:apptest/description.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(Cake());

class Cake extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Cake> {
  final List<String> imageList = [
    'anglecake.png',
    'birthday.png',
    'redvelet.png',
  ];
  final List<String> imageDesc = [
    'Angel food cakes have a spongy, chewy quality derived from their relatively high sugar content and the absence of egg yolks.' +
        'Preparation time: 20-30 minutes\n' +
        'Price: 50 dollar',
    "Many a kid's birthday party is celebrated with a sheet cake version of this dessert that's topped with billows of chocolate frosting and rainbow sprinkles." +
        'Preparation time: 10 minutes\n' +
        'Price: 20 dollar',
    "Red velvet cake is a southern staple that's been iterated into cupcakes, cheesecakes, doughnuts and other confections galore." +
        'Preparation time: 10 minutes\n' +
        'Price: 20 dollar',
  ];

  @override
  Widget build(BuildContext context) {
    var title = "Cake";
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
              title,
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
