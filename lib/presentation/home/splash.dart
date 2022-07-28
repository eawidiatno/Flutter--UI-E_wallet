import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[200],
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.red.shade200,
              ],
            ),
          ),
          child: Center(
            child: Container(
                width: Get.width * 0.75,
                height: Get.width * 0.75,
                child: Image.asset("logo-splash.png")),
          ),
          //Image.asset("Logo.png"),
        ),
      ),
    );
  }
}
