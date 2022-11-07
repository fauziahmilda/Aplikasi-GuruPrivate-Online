import 'package:flutter/material.dart';

class SomethingWentWrong extends StatelessWidget {
  const SomethingWentWrong({Key? key}) : super(key: key);

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
                  child: Text(
                    "ERROR",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
