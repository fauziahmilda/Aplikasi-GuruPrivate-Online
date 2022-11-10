import 'package:get/get.dart';

import '../controllers/story_guru_controller.dart';

class StoryGuruBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoryGuruController>(
      () => StoryGuruController(),
    );
  }
}
