import 'package:flutter_app_bazara/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
