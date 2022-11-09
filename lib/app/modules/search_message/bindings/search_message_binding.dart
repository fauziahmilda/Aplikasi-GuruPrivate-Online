import 'package:get/get.dart';

import '../controllers/search_message_controller.dart';

class SearchMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchMessageController>(
      () => SearchMessageController(),
    );
  }
}
