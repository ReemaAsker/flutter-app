import 'package:apptest/Drawer.dart';
import 'package:apptest/cake.dart';
import 'package:apptest/colddrinks.dart';
import 'package:flutter/material.dart';

import 'hotDrinks.dart';

class Category extends StatelessWidget {
  Color c = Color.fromARGB(255, 198, 154, 105);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Categories"),
        backgroundColor: Color.fromARGB(255, 198, 154, 105),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HotDrinks()),
              );
            },
            child: Column(
              children: [
                SizedBox(height: 20),
                Icon(Icons.coffee),
                SizedBox(height: 20),
                const Text('Hot Drinks',
                    style: const TextStyle(color: Colors.black)),
              ],
            ),
            style: ElevatedButton.styleFrom(
                primary: c,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColdDrinks()),
              );
            },
            child: Column(
              children: [
                SizedBox(height: 20),
                Icon(Icons.ac_unit),
                SizedBox(height: 20),
                const Text('Cold Drinks',
                    style: const TextStyle(color: Colors.black)),
              ],
            ),
            style: ElevatedButton.styleFrom(
                primary: c,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cake()),
              );
            },
            child: Column(
              children: [
                SizedBox(height: 20),
                Icon(Icons.cake),
                SizedBox(height: 20),
                const Text('Cakes',
                    style: const TextStyle(color: Colors.black)),
              ],
            ),
            style: ElevatedButton.styleFrom(
                primary: c,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ],
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 50,
          mainAxisSpacing: 50,
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
