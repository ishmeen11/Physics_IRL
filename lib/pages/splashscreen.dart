import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/pages/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyLogin(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.purple,
      child: Center(
          child: Text(
        'PHYSICS IRL ',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
      )),
    ));
  }
}
