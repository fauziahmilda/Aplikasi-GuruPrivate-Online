import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/all_packages_controller.dart';

class AllPackagesView extends GetView<AllPackagesController> {
  const AllPackagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All Packages'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xFF7E6A56),
          leading: IconButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            icon: Icon(Icons.arrow_back),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              color: Color(0xFF48566A),
              height: Get.height * 90 / 100,
              width: Get.width,
              //tempat data guru tampil
              child: Scrollbar(
                // isAlwaysShown: true,
                thumbVisibility: true,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        width: Get.width,
                        height: Get.height,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
