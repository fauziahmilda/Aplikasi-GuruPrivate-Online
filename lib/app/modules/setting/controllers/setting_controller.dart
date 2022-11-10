import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:get/get.dart';

import '../../profile/controllers/profile_controller.dart';

class SettingController extends GetxController {
  TextEditingController nameFromProfileController =
      Get.find<ProfileController>().nameU;
  TextEditingController usernameFromProfileController =
      Get.find<ProfileController>().usernameU;
  TextEditingController emailFromProfileController =
      Get.find<ProfileController>().emailU;
  TextEditingController addressFromProfileController =
      Get.find<ProfileController>().addressU;
  TextEditingController phoneFromProfileController =
      Get.find<ProfileController>().phoneU;
  TextEditingController pwFromProfileController =
      Get.find<ProfileController>().pwU;
  TextEditingController classFromProfileController =
      Get.find<ProfileController>().classU;
  final count = 0.obs;
  @override
  void onInit() {
    nameFromProfileController = TextEditingController();
    classFromProfileController = TextEditingController();
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
