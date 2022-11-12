// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF48566A),
      appBar: AppBar(
        title: const Text('Help and Support'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF584A3C),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.SETTING),
          icon: Icon(Icons.arrow_back),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: Get.height * 0.8,
          width: Get.width * 0.9,
          decoration: BoxDecoration(
              color: Color(0xFFE1E5EA),
              borderRadius: BorderRadius.circular(10)),
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("Help and Support:"),
                ),
              ],
            ),
          )),
        ),
      )),
    );
  }
}
