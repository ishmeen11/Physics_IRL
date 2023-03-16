import 'package:flutter/material.dart';
import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/pages/login.dart';
import 'package:helloworld/pages/register.dart';
import 'package:helloworld/pages/types.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
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
                  margin: EdgeInsets.only(left: 25, right: 25, top: 30),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Text(
                        " \nABOUT \nPHYSISC IRL\n",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        " \nWelcome to PHYSICS IRL,where physics is explained using real life objects we see or use everyday",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "This application captures real-life images  and helpes students discover and understand the various forces acting on the real-life object using the technology of AUGMENTED REALITY.",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "It also explains the type of force in simple and easy language for students to understand effortlessly",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyType()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 20.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            primary: Colors.purple),
                        child: Text(
                          "START",
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
