import 'package:get/get.dart';

import '../controllers/kotak_guru_controller.dart';

class KotakGuruBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KotakGuruController>(
      () => KotakGuruController(),
    );
  }
}
