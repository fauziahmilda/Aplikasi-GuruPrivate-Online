// ignore_for_file: unnecessary_overrides

import 'package:flutter_app_bazara/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // ignore: todo
  //TODO: Implement AuthController

  var isSkipIntro = false.obs;
  var isAuth = false.obs;
  //CONTROLER UNTUK LOGIN MENGGUNAKAN GOOGLE
  void login() {
    Get.offAllNamed(Routes.HOME);
  }

//CONTROLER UNTUK LOGOUT
  void logout() {
    Get.offAllNamed(Routes.LOGIN);
  }

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
