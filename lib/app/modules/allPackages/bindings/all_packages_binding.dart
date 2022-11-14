import 'package:get/get.dart';

import '../controllers/all_packages_controller.dart';

class AllPackagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllPackagesController>(
      () => AllPackagesController(),
    );
  }
}
