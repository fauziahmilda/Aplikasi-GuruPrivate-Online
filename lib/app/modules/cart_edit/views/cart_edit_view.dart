import 'package:flutter/material.dart';

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
      body: Center(
        child: Text(
          'CartEditView is working',
          style: TextStyle(fontSize: 20),
        ),
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
                      onPressed: () {},
                      child: Image.asset(
                        "assets/buttons/delete-cart.png",
                        width: Get.width * 0.4,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
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
