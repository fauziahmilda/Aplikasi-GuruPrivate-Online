// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/phone_controller.dart';

class PhoneView extends GetView<PhoneController> {
  const PhoneView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5D6E89),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF5D6E89),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Get.offAllNamed(Routes.CHAT_ROOM),
        ),
      ),
      body: Center(
        child: Container(
          height: Get.height * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/msg-profile.png"),
              Text(
                'Teacher Name',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Calling . . .',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 75,
        color: Color(0xFF7E6A56),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                color: Colors.white,
                child: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      Get.defaultDialog(
                          title: "Maaf",
                          middleText: "Layanan ini belum tersedia");
                    },
                    icon: Icon(
                      Icons.volume_off,
                      color: Color.fromARGB(255, 39, 161, 43),
                    )),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                color: Colors.white,
                child: IconButton(
                    iconSize: 30,
                    onPressed: () => Get.offAllNamed(Routes.CHAT_ROOM),
                    icon: Icon(
                      Icons.call_end,
                      color: Color.fromARGB(255, 194, 33, 21),
                    )),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
