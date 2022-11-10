// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/schedule_controller.dart';

class ScheduleView extends GetView<ScheduleController> {
  const ScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff48566A),
      appBar: AppBar(
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
        title: Padding(
            padding: const EdgeInsets.only(top: 10, left: 30),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/dira.png",
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Milda Maulida Fauziah",
                        style:
                            TextStyle(color: Color(0xFF29313d), fontSize: 15),
                      ),
                      Text(
                        "12 MIPA",
                        style:
                            TextStyle(color: Color(0xFF29313d), fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            )),
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
              color: Color(0xFF48566A),
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
      body: Stack(
        children: [
          //HOME ATAS
          Container(
              alignment: Alignment.topCenter,
              height: 50,
              width: Get.width,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50)),
                child: Container(
                  height: Get.height * 15 / 100,
                  width: Get.width,
                  color: Color(0xFFCBAF87),
                ),
              )),
          //CALENDAR
          Container(
            width: Get.width,
            height: Get.height,
            margin: EdgeInsets.only(top: 100),
            color: Color(0xff48566A),
            child: ListView(
              children: [],
            ),
          ),

          //tulisan paling atas: SCHEDULE
          Container(
            margin: EdgeInsets.only(top: 30, left: 50, right: 50),
            width: Get.width,
            height: Get.height * 5 / 100,
            decoration: BoxDecoration(
              color: Color(0xFF7E6A56),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () => Get.offAllNamed(Routes.SETTING),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        "My Schedule",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
