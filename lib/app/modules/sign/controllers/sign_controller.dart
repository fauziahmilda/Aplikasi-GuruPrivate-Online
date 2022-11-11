// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignController extends GetxController {
  TextEditingController nameU = TextEditingController(text: "contoh nama");
  TextEditingController usernameU =
      TextEditingController(text: "contoh username");
  TextEditingController emailU =
      TextEditingController(text: "contoh@gmail.com");
  TextEditingController addressU = TextEditingController(text: "contoh alamat");
  TextEditingController phoneU = TextEditingController(text: "contoh phone");
  TextEditingController pwU = TextEditingController(text: "contohpw");
  TextEditingController classU = TextEditingController(text: "contoh kelas");

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameU.dispose();
    usernameU.dispose();
    emailU.dispose();
    addressU.dispose();
    phoneU.dispose();
    pwU.dispose();
    classU.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
