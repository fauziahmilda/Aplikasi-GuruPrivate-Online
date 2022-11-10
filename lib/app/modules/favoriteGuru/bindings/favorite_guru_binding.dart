import 'package:get/get.dart';

import '../controllers/favorite_guru_controller.dart';

class FavoriteGuruBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoriteGuruController>(
      () => FavoriteGuruController(),
    );
  }
}
