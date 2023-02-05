import 'package:apptest/aboutus.dart';
import 'package:apptest/category.dart';
import 'package:apptest/profile.dart';

import 'Signup.dart';
import 'login.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Welcom'),
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 198, 154, 105),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Profile'),
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => profile(),
                )),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Categories'),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Category()),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('About us'),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => AboutUs()),
            ), //Product_Details.routeName
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Log out'),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            ), //Product_Details.routeName
          ),
        ],
      ),
    );
  }
}
