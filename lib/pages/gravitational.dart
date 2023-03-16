import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/pages/login.dart';
import 'package:helloworld/pages/register.dart';
import 'package:helloworld/pages/types.dart';
import 'package:helloworld/pages/camera.dart';

class MyGravitational extends StatefulWidget {
  const MyGravitational({Key? key}) : super(key: key);

  @override
  _MyGravitationalState createState() => _MyGravitationalState();
}

class _MyGravitationalState extends State<MyGravitational> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Text(
                        " Gravitational force is the force that acts towards the centre of the earth. It is the force of attraction between the object and the surface.\nForce of gravity=weight of the object",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyCamera()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 20.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            primary: Colors.purple),
                        child: Text(
                          "Begin your Learning",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
                ),
              ],
            )));
  }
}
