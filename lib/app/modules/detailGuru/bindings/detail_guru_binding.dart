import 'package:get/get.dart';

import '../controllers/detail_guru_controller.dart';

class DetailGuruBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailGuruController>(
      () => DetailGuruController(),
    );
  }
}
