import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  late TextEditingController searchG;

  //data
  TextEditingController nameGuru = TextEditingController(text: "Teacher Name");

  TextEditingController subjectGuru = TextEditingController(text: "Subject");
  TextEditingController priceGuru =
      TextEditingController(text: "Rp. 100.000,00");

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
