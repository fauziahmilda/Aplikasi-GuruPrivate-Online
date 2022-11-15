// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/cart_edit_controller.dart';

class CartEditView extends GetView<CartEditController> {
  const CartEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
        elevation: 0,
        backgroundColor: Color(0xFF7E6A56),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              //TEACHER NAME
              Container(
                height: 60,
                width: Get.width,
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: "Teacher Name",
                    border: InputBorder.none,
                  ),
                ),
              ),
              //SUBJECT
              Container(
                height: 60,
                width: Get.width,
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Subjects",
                        border: InputBorder.none,
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 1,
                      color: Colors.brown,
                    )
                  ],
                ),
              ),
              Container(
                height: 65,
                width: Get.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                              title: "Maaf",
                              middleText: "Layanan ini belum tersedia");
                        },
                        icon: Icon(
                          Icons.check_box,
                          color: const Color(0xFF48566A),
                        )),
                    Container(
                      width: 160,
                      height: 65,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Get.defaultDialog(
                                        title: "Maaf",
                                        middleText:
                                            "Layanan ini belum tersedia");
                                  },
                                  icon: Icon(
                                    Icons.calendar_month,
                                    color: const Color(0xFF48566A),
                                  )),
                              Container(
                                height: 45,
                                width: 110,
                                child: TextField(
                                  style: TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                    hintText: "Wed, 20 Jul 2022",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 160,
                            height: 1,
                            color: Colors.brown,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Container(
                      width: 160,
                      height: 65,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Get.defaultDialog(
                                        title: "Maaf",
                                        middleText:
                                            "Layanan ini belum tersedia");
                                  },
                                  icon: Icon(
                                    Icons.timer,
                                    color: const Color(0xFF48566A),
                                  )),
                              Container(
                                height: 45,
                                width: 110,
                                child: TextField(
                                  style: TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                    hintText: "00:00 - 00:00",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 160,
                            height: 1,
                            color: Colors.brown,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Max, 3 hours",
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 70,
                width: Get.width,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                        onPressed: () async =>
                            controller.showBookingDate(context),
                        child: Image.asset(
                          "assets/buttons/choose-another-day.png",
                          height: 35,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Max, 3 days",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 1,
                      color: Colors.brown,
                    )
                  ],
                ),
              ),
              Container(
                height: 65,
                width: Get.width,
                child: Row(
                  children: [
                    Container(
                      height: 65,
                      width: 210,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.location_pin,
                                    color: const Color(0xFF48566A),
                                  )),
                              Container(
                                height: 45,
                                width: 100,
                                child: TextField(
                                  style: TextStyle(fontSize: 18),
                                  decoration: InputDecoration(
                                    hintText: "120 Km",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 200,
                            height: 1,
                            color: Colors.brown,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "From your location",
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 70,
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 1,
                        width: Get.width,
                        color: Colors.brown,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 200,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () => Get.toNamed(Routes.PAYMENT),
                                  icon: Icon(
                                    Icons.payment,
                                    color: const Color(0xFF48566A),
                                  )),
                              Text(
                                "Payment Methode",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: Get.width,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: Get.width,
          height: Get.height * 0.18,
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.065,
                color: const Color(0xFF5D6E89),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90,
                      height: 20,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Total Price",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 20,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        maxLines: 1,
                        readOnly: true,
                        enabled: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(9),
                            hintText: "Rp. 100.000,00",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () async => controller.showDelete(context),
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
    );
  }
}
