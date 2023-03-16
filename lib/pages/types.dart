import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/register.dart';
import '/widgets/drawer.dart';
import 'package:helloworld/pages/gravitational.dart';

class MyType extends StatefulWidget {
  const MyType({Key? key}) : super(key: key);

  @override
  _MyTypeState createState() => _MyTypeState();
}

class _MyTypeState extends State<MyType> {
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
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'TYPES OF FORCES ',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 35),
                      child: Column(
                        children: [
                          ElevatedButton(
                            child: Text('GRAVITIONAL FORCE'),
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 20, 30, 20),
                                primary: Colors.deepPurple,
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Lato-BoldItalic',
                                  fontWeight: FontWeight.w300,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyGravitational()));
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            child: Text('FRICTIONAL FORCE'),
                            style: ElevatedButton.styleFrom(
                                elevation: 3,
                                padding:
                                    const EdgeInsets.fromLTRB(30, 20, 30, 20),
                                primary: Colors.deepPurple,
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
