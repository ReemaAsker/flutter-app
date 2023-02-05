import 'package:apptest/description.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(HotDrinks());

class HotDrinks extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<HotDrinks> {
  final List<String> imageList = [
    'caffewithmilk.png',
    'latte.png',
    'mocha.png',
    'tea.png',
    'frenshcaffe.png',
  ];
  final List<String> imageDesc = [
    "Cafe con leche (“coffee with milk” in Spanish) is a coffee drink made of strong coffee or espresso and steamed milk. " +
        "The drink originated in Spain and is popular in Latin America, and uses equal parts coffee and milk. It’s similar to the French cafe au lait, but it’s usually served sweetened. Here’s what you’ll need to make cafe con leche:" +
        "Strong coffee or espresso\nWhole milk\nSugar\n" +
        'Preparation time: 10-20 minutes\n' +
        'Price: 50 dollar',
    'A chai latte is a Western invention: it takes traditional masala chai, the milky spiced tea from India,' +
        'and combines it with frothy steamed milk of a latte. The mashup was popularized by Starbucks in the 1990’s.' +
        'Many coffeehouse versions of a chai latte have little left of the traditional Indian inspiration: they’re' +
        'often too sweet and overly spiced.\n' +
        'Preparation time: 5-15 minutes\n' +
        'Price: 25 dollar',
    "A mocha or mocha latte is a drink made with espresso and steamed milk that’s flavored with chocolate syrup." +
        'There’s lots of variation on exactly what constitutes this espresso drink: it’s up to the barista! This drink' +
        'can be made with various levels of espresso shots, quantities of steamed milk, and amounts of chocolate syrup.' +
        "The mocha rose to popularity with Starbucks culture starting in the 1980’s in America.\n" +
        'Preparation time: 20 minutes\n' +
        'Price: 30 dollar',
    ' This ginger tea is cozy and warming: full of spicy ginger flavor, with a hint of' +
        'tangy lemon and sweet honey. It’s a good substitute for coffee, if you’re trying' +
        'to avoid caffeine. And it’s got some potential health benefits like aiding digestion, reducing inflammation,' +
        'and more! Here’s how to make this easy DIY ginger drink.\n' +
        'Preparation time: 10 minutes\n' +
        'Price: 10 dollar',
    'The French press is a small pitcher with a plunger that’s used to brew ' +
        'coffee and other drinks. Despite the name, the French press is actually Italian:' +
        'it was patented by an Italian designer in 1929. Other names for this coffee brewing ' +
        'tool include coffee press, coffee plunger, or cafetière.\n' +
        'Preparation time: 10 minutes\n' +
        'Price: 20 dollar',
  ];

  @override
  Widget build(BuildContext context) {
    var title = "Hot Drinks";
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
              'Hot drinks',
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
                            //'caffewithmilk.png'
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
