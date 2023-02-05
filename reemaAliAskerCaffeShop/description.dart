import 'package:flutter/material.dart';

class description extends StatelessWidget {
  description(String this.title, {required this.imagename, required this.desc});

  final String imagename;
  final String desc;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromARGB(255, 198, 154, 105),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                this.imagename,
                height: 300,
                width: 300,
              ),
              SizedBox(height: 50),
              Center(
                  child: Text(
                this.desc,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
