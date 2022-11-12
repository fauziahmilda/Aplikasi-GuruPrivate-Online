import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../../profile/controllers/profile_controller.dart';

class SettingController extends GetxController {
  final authC = Get.find<AuthController>();

  //LOGOUT
  Future<void> showLogout(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Color(0xffE1E5EA),
            content: Text("Are you sure want to Logout from this account?"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => authC.logout(),
                    child: Image.asset(
                      "assets/buttons/book-yes.png",
                      width: 110,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.back(),
                    child: Image.asset(
                      "assets/buttons/book-cancel.png",
                      width: 110,
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }

  //DELETE ACC
  Future<void> showDeleteAccount(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Color(0xffE1E5EA),
            content: Text("Are you sure want to Logout from this account?"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.defaultDialog(
                          title: "Maaf",
                          middleText: "Layanan ini belum tersedia");
                    },
                    child: Image.asset(
                      "assets/buttons/book-yes.png",
                      width: 110,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.back(),
                    child: Image.asset(
                      "assets/buttons/book-cancel.png",
                      width: 110,
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }

  //DATA
  TextEditingController nameFromProfileController =
      Get.find<ProfileController>().nameU;
  TextEditingController usernameFromProfileController =
      Get.find<ProfileController>().usernameU;
  TextEditingController emailFromProfileController =
      Get.find<ProfileController>().emailU;
  TextEditingController addressFromProfileController =
      Get.find<ProfileController>().addressU;
  TextEditingController phoneFromProfileController =
      Get.find<ProfileController>().phoneU;
  TextEditingController pwFromProfileController =
      Get.find<ProfileController>().pwU;
  TextEditingController classFromProfileController =
      Get.find<ProfileController>().classU;
  final count = 0.obs;
  @override
  void onInit() {
    nameFromProfileController = TextEditingController();
    classFromProfileController = TextEditingController();
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
