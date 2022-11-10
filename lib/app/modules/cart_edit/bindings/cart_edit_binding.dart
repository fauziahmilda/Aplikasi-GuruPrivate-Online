import 'package:get/get.dart';

import '../controllers/cart_edit_controller.dart';

class CartEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartEditController>(
      () => CartEditController(),
    );
  }
}
