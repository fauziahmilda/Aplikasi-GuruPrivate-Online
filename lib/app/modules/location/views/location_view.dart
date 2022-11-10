// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  const LocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF5D6E89),
      appBar: AppBar(
        title: const Text('Location'),
        elevation: 0,
        backgroundColor: Color(0xFF584A3C),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            iconSize: 20,
            onPressed: () => Get.back(),
            icon: Image.asset(
              "assets/buttons/x.png",
              width: 16,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
            // ignore: prefer_const_constructors
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 35,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16),
                // margin: EdgeInsets.only(right: 16),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: const Color(0xFFE1E5EA),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.search,
                          color: Color.fromARGB(255, 87, 87, 87)),
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller.searchL,
                        maxLines: 1,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search city, area, or neighbourhood',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //ICON CURRENT LOCATIOIN AND CHOOSE ON MAP
            Container(
              height: Get.height * 0.07,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      "assets/buttons/current-location.png",
                      width: Get.width * 0.45,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      "assets/buttons/choose-on-map.png",
                      width: Get.width * 0.45,
                    ),
                  ),
                ],
              ),
            ),
            //GAMBAR MAP
            Padding(
              padding: const EdgeInsets.all(10),
              child: Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/map.png",
                  fit: BoxFit.cover,
                  height: Get.height * 0.6,
                ),
              )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          children: [
            Container(
              color: Color(0xFF5D6E89),
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
                        onPressed: () => Get.offAllNamed(Routes.CART),
                        icon: Image.asset(
                          "assets/buttons/menu-cart.png",
                        ),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () => Get.offAllNamed(Routes.SETTING),
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
    );
  }
}
