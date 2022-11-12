// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/detail_guru_controller.dart';

class DetailGuruView extends GetView<DetailGuruController> {
  const DetailGuruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: Container(
          height: 50,
          color: Color(0xff29313D),
        ),
        titleSpacing: 0,
        elevation: 0,
        toolbarHeight: Get.height * 0.35,
        actions: [
          Stack(
            children: [
              Container(
                width: Get.width,
                child: Image.asset(
                  "assets/images/t1.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextButton(
                            onPressed: () => Get.back(),
                            child: Image.asset(
                              "assets/buttons/back.png",
                              height: 50,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextButton(
                            onPressed: () => Get.offAllNamed(Routes.HOME),
                            child: Image.asset(
                              "assets/buttons/home.png",
                              height: 50,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: Get.height * 0.05,
          width: Get.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      Get.defaultDialog(
                          content: Image.asset(
                            "assets/buttons/ceklis.png",
                            width: 60,
                          ),
                          title: "Berhasil ditambah",
                          backgroundColor: Color(0xffE1E5EA));
                    },
                    child: Container(
                      height: 27,
                      child: Image.asset("assets/buttons/save-cart.png"),
                    )),
                TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () => Get.toNamed(Routes.CHAT_ROOM),
                    child: Container(
                      height: 27,
                      child: Image.asset("assets/buttons/chat.png"),
                    )),
                TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () => Get.toNamed(Routes.CART_EDIT),
                    child: Container(
                      height: 27,
                      child: Image.asset("assets/buttons/book-now.png"),
                    )),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.amber,
      ),
    );
  }
}
