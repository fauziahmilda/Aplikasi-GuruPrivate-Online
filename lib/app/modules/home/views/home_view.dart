import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: Image.asset(
            "assets/images/dira.png",
            width: 50,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 30),
            child: Image.asset(
              "assets/buttons/setting.png",
              width: 20,
            ),
          )
        ],
        centerTitle: false,
        backgroundColor: Color(0xFFCBAF87),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 250,
            width: Get.width,
            child: Image.asset("assets/images/home-atas.png"),
          )
        ],
      ),
    );
  }
}

// class ClipPathClass extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, size.height);

//     var firstControlPoint = Offset(size.width / 4, size.height);
//     var firstPoint = Offset(size.width / 2, size.height);

//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstPoint.dx, firstPoint.dy);

//     var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
//     var secondPoint = Offset(size.width, size.height - 50);

//     path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//         secondPoint.dx, secondPoint.dy);

//     path.lineTo(size.width, 0.0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
