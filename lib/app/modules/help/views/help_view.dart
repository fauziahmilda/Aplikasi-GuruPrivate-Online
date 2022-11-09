import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help and Support'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF584A3C),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.SETTING),
          icon: Icon(Icons.arrow_back),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Center(
        child: Text(
          'HelpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
