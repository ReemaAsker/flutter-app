import 'package:apptest/Drawer.dart';
import 'package:apptest/login.dart';
import 'package:apptest/user.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color.fromARGB(255, 198, 154, 105),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Image.asset(
                'user.png',
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'User Name : ' + User.name,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 198, 154, 105),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Email : ' + User.email,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 198, 154, 105),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
