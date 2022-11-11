// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/all_packages_controller.dart';

class AllPackagesView extends GetView<AllPackagesController> {
  const AllPackagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      appBar: AppBar(
        title: const Text('All Packages'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF7E6A56),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.HOME),
          icon: Icon(Icons.arrow_back),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Center(
        child: Text(
          'AllPackagesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
