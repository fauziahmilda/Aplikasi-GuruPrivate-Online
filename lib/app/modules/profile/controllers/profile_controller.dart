// import 'dart:ffi';

// ignore_for_file: unnecessary_overrides

// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  late TextEditingController nameU;
  late TextEditingController usernameU;
  late TextEditingController emailU;
  late TextEditingController addressU;
  late TextEditingController phoneU;
  late TextEditingController pwU;
  late TextEditingController classU;
  final count = 0.obs;
  @override
  void onInit() {
    nameU = TextEditingController(text: "contohnama");
    usernameU = TextEditingController(text: "contohusername");
    emailU = TextEditingController(text: "contoh.email@gmail.com");
    addressU = TextEditingController(text: "contohalamat");
    phoneU = TextEditingController(text: "contohphone");
    pwU = TextEditingController(text: "contohpw");
    classU = TextEditingController(text: "contohkelas");
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
