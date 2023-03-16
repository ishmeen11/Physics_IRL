import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/enablecamera.dart';

class MyCamera extends StatelessWidget {
  const MyCamera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new AssetImage("assets/images/background.jpg"),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              await availableCameras().then(
                (value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CameraPage(
                      cameras: value,
                    ),
                  ),
                ),
              );
            },
            child: const Text('enable Camera'),
          ),
        ),
      ),
    );
  }
}
