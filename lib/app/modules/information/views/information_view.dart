// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/information_controller.dart';

class InformationView extends GetView<InformationController> {
  const InformationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF48566A),
      appBar: AppBar(
        title: const Text('Information'),
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
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: Get.height * 0.8,
          width: Get.width * 0.9,
          decoration: BoxDecoration(
              color: Color(0xFFE1E5EA),
              borderRadius: BorderRadius.circular(10)),
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("Information:"),
                ),
                Container(
                  child: Text("Hormat kami kepada seluruh pengguna aplikasi."),
                ),
                Container(
                  child: Text(
                      "Aplikasi ini masih dalam tahap pengembangan dan masih memiliki banyak kekurangan dikarenakan fokus kepada UI. Berikut beberapa kekurangan yang masih belum terselesaikan:"),
                ),
                Container(
                  child: Text(
                      "- Login tanpa Google-Account masih belum sempurna."),
                ),
                Container(
                  child: Text(
                      "- Logout dengan Google-Account masih belum sempurna."),
                ),
                Container(
                  child: Text("- Fifur filter masih belum berjalan."),
                ),
                Container(
                  child: Text(
                      "- Fitur map dan deteksi lokasi masih belum berjalan."),
                ),
                Container(
                  child: Text("- Fitur chat belum berjalan."),
                ),
                Container(
                  child: Text(
                      "Maka dari itu, aplikasi ini diinformasikan kepada seluruh pengguna sebagai aplikasi yang hanya menampilkan tampilan luar."),
                ),
                SizedBox(),
                Container(
                  child: Text("Salam hangat dari developer <3"),
                ),
              ],
            ),
          )),
        ),
      )),
    );
  }
}
