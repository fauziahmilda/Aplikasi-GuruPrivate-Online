import 'package:get/get.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController

  var isSkipIntro = false.obs;
  var isAuth = false.obs;

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
