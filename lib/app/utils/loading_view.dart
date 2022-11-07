import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFFD9D9D9),
          body: Center(
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/splash.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const Center(
                  child: CircularProgressIndicator(),
                )
              ],
            ),
          )),
    );
  }
}
