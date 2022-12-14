// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffD9D9D9),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 30),
          child: Image.asset(
            "assets/images/dira.png",
            width: 50,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Get.offAllNamed(Routes.SETTING),
            child: Container(
              margin: const EdgeInsets.only(top: 10, right: 30),
              child: Image.asset(
                "assets/buttons/setting.png",
                width: 20,
              ),
            ),
          )
        ],
        centerTitle: false,
        backgroundColor: Color(0xFFCBAF87),
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          children: [
            Container(
              color: Color(0xFFD9D9D9),
              width: Get.width * 100 / 100,
              height: 75,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80), topRight: Radius.circular(80)),
              child: Container(
                width: Get.width * 100 / 100,
                height: 75,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  //ICON ICON
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        iconSize: 40,
                        onPressed: () => Get.offAllNamed(Routes.MESSAGE),
                        icon: Image.asset(
                          "assets/buttons/menu-msg.png",
                        ),
                      ),
                      IconButton(
                        iconSize: 50,
                        onPressed: () => Get.offAllNamed(Routes.SEARCH),
                        icon: Image.asset("assets/buttons/menu-scr.png"),
                      ),
                      IconButton(
                        iconSize: 60,
                        onPressed: () => Get.offAllNamed(Routes.HOME),
                        icon: Image.asset("assets/buttons/menu-home.png"),
                      ),
                      IconButton(
                        iconSize: 50,
                        onPressed: () => Get.toNamed(Routes.CART),
                        icon: Image.asset(
                          "assets/buttons/menu-cart.png",
                        ),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () => Get.toNamed(Routes.SETTING),
                        icon: Image.asset(
                          "assets/buttons/menu-profile.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          //HOME ATAS
          Container(
              alignment: Alignment.topCenter,
              height: Get.height * 0.125,
              width: Get.width,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50)),
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  color: Color(0xFFCBAF87),
                ),
              )),
          //list Teachername dan mapel
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.60,
                color: Color(0xffD9D9D9),
                child: ListView(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 30, right: 30),
                      child: Column(
                        children: [
                          Scrollbar(
                            thumbVisibility: true,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 6, right: 6),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/tname.png",
                                          width: 70,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 6, right: 6),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/tname.png",
                                          width: 70,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 6, right: 6),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/tname.png",
                                          width: 70,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 6, right: 6),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/tname.png",
                                          width: 70,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 6, right: 6),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/tname.png",
                                          width: 70,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: Column(
                        children: [
                          Scrollbar(
                            thumbVisibility: true,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/mapel1.png",
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/mapel2.png",
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/mapel3.png",
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/mapel4.png",
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                              title: "Maaf",
                                              middleText:
                                                  "Layanan ini belum tersedia");
                                        },
                                        child: Image.asset(
                                          "assets/images/mapel5.png",
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Packages",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF29313D),
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                  onPressed: () =>
                                      Get.offAllNamed(Routes.ALL_PACKAGES),
                                  child: Text(
                                    "Lihat Semua >",
                                    style: TextStyle(
                                        color: Color(0xFF29313D), fontSize: 10),
                                  ))
                            ],
                          ),
                          Scrollbar(
                            thumbVisibility: true,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Image.asset(
                                        "assets/images/p-bronze.png",
                                        width: 100,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Image.asset(
                                        "assets/images/p-silver.png",
                                        width: 100,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Image.asset(
                                        "assets/images/p-gold.png",
                                        width: 100,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Image.asset(
                                        "assets/images/p-plat.png",
                                        width: 100,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Favorite Teachers",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF29313D),
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                  onPressed: () =>
                                      Get.offAllNamed(Routes.FAVORITE_GURU),
                                  child: Text(
                                    "Lihat Semua >",
                                    style: TextStyle(
                                        color: Color(0xFF29313D), fontSize: 10),
                                  ))
                            ],
                          ),
                          Scrollbar(
                            thumbVisibility: true,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: TextButton(
                                        onPressed: () =>
                                            Get.toNamed(Routes.DETAIL_GURU),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            color: Color(0xFF5D6E89),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Image.asset(
                                                "assets/images/t4.png",
                                                width: 100,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: TextButton(
                                        onPressed: () =>
                                            Get.toNamed(Routes.DETAIL_GURU),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            color: Color(0xFFCBAF87),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Image.asset(
                                                "assets/images/t3.png",
                                                width: 100,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: TextButton(
                                        onPressed: () =>
                                            Get.toNamed(Routes.DETAIL_GURU),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            color: Color(0xFF29313D),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Image.asset(
                                                "assets/images/t5.png",
                                                width: 100,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: TextButton(
                                        onPressed: () =>
                                            Get.toNamed(Routes.DETAIL_GURU),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            color: Color(0xFF584A3C),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Image.asset(
                                                "assets/images/t7.png",
                                                width: 100,
                                              ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //tulisan paling atas: NAMA DAN KELAS
          Container(
            margin: EdgeInsets.only(top: 25, left: 40, right: 40),
            width: Get.width,
            height: Get.height * 15 / 100,
            decoration: BoxDecoration(
              color: Color(0xFF48566A),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Unknown User",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                  child: Container(
                    height: 1,
                    color: Colors.white,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30, right: 30, top: 25),
                  child: Text(
                    "Unknown Class",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                  child: Container(
                    height: 1,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
