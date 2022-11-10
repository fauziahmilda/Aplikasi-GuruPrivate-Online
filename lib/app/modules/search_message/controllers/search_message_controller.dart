import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SearchMessageController extends GetxController {
  final count = 0.obs;
  late TextEditingController searchC;

  @override
  void onInit() {
    searchC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    searchC.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void increment() => count.value++;
}
