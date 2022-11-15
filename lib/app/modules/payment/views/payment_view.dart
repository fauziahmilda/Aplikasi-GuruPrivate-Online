// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Methode'),
        elevation: 0,
        backgroundColor: Color(0xFF7E6A56),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //batas
                  MyPayment(),
                  MyPayment(),
                  MyPayment(),
                  MyPayment(),
                  MyPayment(),
                ],
              ),
            )),
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
                      onPressed: () {
                        Get.defaultDialog(
                            title: "Maaf",
                            middleText: "Layanan ini belum tersedia");
                      },
                      child: Image.asset(
                        "assets/buttons/confirm.png",
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

class MyPayment extends StatelessWidget {
  const MyPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 200,
            height: Get.height * 0.08,
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
                  style:
                      TextStyle(fontSize: 18, color: const Color(0xFF29313d)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Container(
            height: 1.5,
            width: Get.width,
            color: Color(0xffCBAF87),
          ),
        ),
      ],
    );
  }
}
