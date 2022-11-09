import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF48566A),
        appBar: AppBar(
          title: const Text('Setting'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF584A3C),
          leading: IconButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            icon: Icon(Icons.arrow_back),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Stack(
            children: [
              Container(
                color: Color(0xFF48566A),
                width: Get.width * 100 / 100,
                height: 75,
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80)),
                child: Container(
                  width: Get.width,
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
                          onPressed: () => Get.offAllNamed(Routes.CART),
                          icon: Image.asset(
                            "assets/buttons/menu-cart.png",
                          ),
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () => Get.offAllNamed(Routes.PROFILE),
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
            //BUBLE BACKGROUND
            Container(
              child: Image.asset("assets/images/bb3.png"),
            ),
            //WADAH SETTING
            Center(
              //UKURAN WADAH SETTING sampe bawah
              child: Container(
                height: 600,
                child: Stack(
                  children: [
                    //bagian wadah atas sama button logout
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              color: Color(0xFFD9D9D9),
                              width: Get.width * 60 / 100,
                              height: 380,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: Get.width * 0.65,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            "assets/images/dira.png",
                                            width: 70,
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Milda Maulida Fauziah",
                                              style: TextStyle(),
                                            ),
                                            Text("12 SMA")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  TextButton(
                                    style: flatButtonStyle,
                                    onPressed: () =>
                                        Get.offAllNamed(Routes.PROFILE),
                                    child: Image.asset(
                                      "assets/buttons/s1.png",
                                      width: 250,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Get.offAllNamed(Routes.SCHEDULE),
                                    child: Image.asset(
                                      "assets/buttons/s2.png",
                                      width: 250,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Get.offAllNamed(Routes.PROFILE),
                                    child: Image.asset(
                                      "assets/buttons/s3.png",
                                      width: 250,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Get.offAllNamed(Routes.PROFILE),
                                    child: Image.asset(
                                      "assets/buttons/s4.png",
                                      width: 250,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Get.offAllNamed(Routes.PROFILE),
                                    child: Image.asset(
                                      "assets/buttons/s5.png",
                                      width: 250,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                "assets/buttons/logout.png",
                                width: 274,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
