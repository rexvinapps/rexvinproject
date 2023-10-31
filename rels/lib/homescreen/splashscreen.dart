// import 'package:finalproject/homescreen/homescreen.dart';
// import 'package:finalproject/routes/routenames.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rels/routes/routenames.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAndToNamed(RouteName.navbar);
    });

    return Scaffold(
      backgroundColor: Color(0xFFFAF8F1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/rels-gold.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 100,
            ),
            CircularProgressIndicator(),
            SizedBox(
              height: 100,
            ),
            Text(
              'ReLS v2.0',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
