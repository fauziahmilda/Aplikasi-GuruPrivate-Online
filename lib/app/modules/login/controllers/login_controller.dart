import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailU =
      TextEditingController(text: "contoh@gmail.com");
  TextEditingController pwU = TextEditingController(text: "contohpw");
  // late TextEditingController emailU;
  // late TextEditingController pwU;
  final count = 0.obs;
  @override
  void onInit() {
    // emailU = TextEditingController(text: "contoh.email@gmail.com");
    // pwU = TextEditingController(text: "contohpw");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailU.dispose();
    pwU.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
