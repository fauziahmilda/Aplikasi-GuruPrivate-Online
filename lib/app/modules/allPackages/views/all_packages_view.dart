import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/all_packages_controller.dart';

class AllPackagesView extends GetView<AllPackagesController> {
  const AllPackagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF48566A),
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
              color: Color(0xffD9D9D9),
              height: Get.height * 90 / 100,
              width: Get.width,
              //tempat data guru tampil
              child: SingleChildScrollView(
                // isAlwaysShown: true,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: Get.width,
                        height: Get.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff7E6A56),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "BRONZE PACKAGE",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Container(
                                  width: Get.width * 0.9,
                                  height: 1.5,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Image.asset(
                                      "assets/images/medal-bronze.png"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Up your score !",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: Get.width,
                        height: Get.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff95A2B7),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "SILVER PACKAGE",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff584A3C)),
                                ),
                                Container(
                                  width: Get.width * 0.9,
                                  height: 1.5,
                                  color: Color(0xff584A3C),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Image.asset(
                                      "assets/images/medal-silver.png"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Up your score !",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff584A3C)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: Get.width,
                        height: Get.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffCBAF87),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "SILVER PACKAGE",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E4A5B)),
                                ),
                                Container(
                                  width: Get.width * 0.9,
                                  height: 1.5,
                                  color: Color(0xff3E4A5B),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Image.asset(
                                      "assets/images/medal-gold.png"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Up your score !",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff3E4A5B)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: Get.width,
                        height: Get.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff5D6E89),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "SILVER PACKAGE",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Container(
                                  width: Get.width * 0.9,
                                  height: 1.5,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Image.asset(
                                      "assets/images/medal-plat.png"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Up your score !",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
