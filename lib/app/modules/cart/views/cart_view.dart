// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        elevation: 0,
        backgroundColor: Color(0xFF7E6A56),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: Get.width,
          height: Get.height * 0.1,
          child: Column(
            children: [
              Container(
                width: Get.width * 0.85,
                height: 1,
                color: const Color(0xFF7E6A56),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.defaultDialog(
                            title: "Maaf",
                            middleText: "Layanan ini belum tersedia");
                      },
                      child: Image.asset(
                        "assets/buttons/delete-cart.png",
                        width: Get.width * 0.4,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.defaultDialog(
                            title: "Maaf",
                            middleText: "Layanan ini belum tersedia");
                      },
                      child: Image.asset(
                        "assets/buttons/paid-cart.png",
                        width: Get.width * 0.4,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [MyWidget(), MyWidget(), MyWidget(), MyWidget()],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.26,
      child: Column(
        children: [
          Container(
            height: 50,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.check_box)),
                Container(
                  height: 20,
                  width: Get.width * 0.6,
                  child: TextField(
                    enabled: false,
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: "Teacher Name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Text("Edit"),
                IconButton(
                    onPressed: () => Get.toNamed(Routes.CART_EDIT),
                    icon: Icon(Icons.edit))
              ],
            ),
          ),
          Container(
            height: 50,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 65,
                ),
                Container(
                  height: 20,
                  width: Get.width * 0.6,
                  child: TextField(
                    enabled: false,
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: "Kimia",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 65,
                ),
                Container(
                  height: 20,
                  width: Get.width * 0.6,
                  child: TextField(
                    enabled: false,
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: "12-08-2022",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 65,
                ),
                Container(
                  height: 20,
                  width: Get.width * 0.6,
                  child: TextField(
                    enabled: false,
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: "Rp. 100.000,00",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Text("Total Price"),
              ],
            ),
          ),
          Container(
            width: Get.width * 0.85,
            height: 1,
            color: const Color(0xFF7E6A56),
          )
        ],
      ),
    );
  }
}
