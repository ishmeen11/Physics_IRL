import 'package:flutter/material.dart';
import 'package:helloworld/pages/enablecamera.dart';
import 'package:helloworld/pages/list.dart';
import 'package:helloworld/pages/register.dart';
import 'package:helloworld/pages/splashscreen.dart';

import 'package:helloworld/pages/types.dart';
import 'pages/login.dart';
import 'utils/routes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'FontMain',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => MyLogin(),
        MyRoutes.listRoute: (context) => MyList(),
        MyRoutes.cameraRoute: (context) => CameraPage(),
      },
    );
  }
}
