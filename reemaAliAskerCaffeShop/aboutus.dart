import 'package:apptest/Drawer.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Color.fromARGB(255, 198, 154, 105),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Text(
            "Welcom ,\nWe are A Caffe shop store tha can browser hot ,cold and cakes , \n" +
                "you can know a description for each of them and know the preperation time and the cost of it.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
      drawer: DrawerWidget(),
    );
  }
}
