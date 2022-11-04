import 'package:get/get.dart';

import '../controllers/sign_controller.dart';

class SignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignController>(
      () => SignController(),
    );
  }
}
