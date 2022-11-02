import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFFD9D9D9),
          body: Center(
            child: Container(
              child: Image.asset(
                "assets/images/splash.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          )),
    );
  }
}
