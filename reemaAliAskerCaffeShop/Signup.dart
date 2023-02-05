import 'package:apptest/category.dart';
import 'package:apptest/hotDrinks.dart';
import 'package:apptest/user.dart';

import 'login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Signup> {
  String? _validator(String value) {
    return (value.isEmpty) ? 'Field Cannot be Empty' : null;
  }

  String username = '';
  String email = '';
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  Color c = Color.fromARGB(255, 198, 154, 105);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Form(
              key: _key,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                        color: c, fontSize: 36, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                      controller: userController,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r"^[a-zA-Z]+").hasMatch(value)) {
                          return 'Please enter correct Username';
                        }
                        username = value;
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: 'User name',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )))),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9_\-.]+@[a-z]+\.[a-z]")
                                .hasMatch(value)) {
                          return 'Please enter correct Email';
                        }
                        email = value;
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )))),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                      controller: passController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter correct Password';
                        } else if (value.length < 5) {
                          return 'Please enter Password with length more than 4';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: c,
                              )))),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (!_key.currentState!.validate()) return;
                        User.name = username;
                        User.email = email;
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Category()),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.all(14),
                          primary: c,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))),
                      child: Text('Sign up')),
                  Row(
                    children: <Widget>[
                      const Text('Does have an account?',
                          style: TextStyle(color: Colors.black)),
                      SizedBox(height: 50),
                      GestureDetector(
                        child: const Text('  Login',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 198, 154, 105))),
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
