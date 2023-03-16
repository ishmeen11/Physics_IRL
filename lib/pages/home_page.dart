import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/list.dart';
import '/widgets/drawer.dart';
import 'package:helloworld/pages/register.dart';
import 'package:helloworld/pages/login.dart';
import 'package:helloworld/pages/list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PHYSICS IRL "),
      ),
      body: MyList(),
      /* add child content here */

      drawer: MyDrawer(),
    );
  }
}
