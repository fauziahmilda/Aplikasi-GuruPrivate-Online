// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartEditController extends GetxController {
  final count = 0.obs;

  Future<void> showDelete(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Color(0xffE1E5EA),
            content: Text("Are you sure want to delete this item?"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.defaultDialog(
                          title: "Maaf",
                          middleText: "Layanan ini belum tersedia");
                    },
                    child: Image.asset(
                      "assets/buttons/book-yes.png",
                      width: 110,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.back(),
                    child: Image.asset(
                      "assets/buttons/book-cancel.png",
                      width: 110,
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }

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
    super.onClose();
  }

  void increment() => count.value++;
}
