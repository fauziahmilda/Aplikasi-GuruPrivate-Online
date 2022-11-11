// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  late TextEditingController searchL;

  final count = 0.obs;
  @override
  void onInit() {
    searchL = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    searchL.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
