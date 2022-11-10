import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  late TextEditingController searchG;

  final count = 0.obs;
  @override
  void onInit() {
    searchG = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    searchG.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
