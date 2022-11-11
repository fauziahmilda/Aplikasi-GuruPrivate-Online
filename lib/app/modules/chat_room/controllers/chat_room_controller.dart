// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class ChatRoomController extends GetxController {
  var isShowEmoji = false.obs;

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
    super.onClose();
  }

  void increment() => count.value++;
}
