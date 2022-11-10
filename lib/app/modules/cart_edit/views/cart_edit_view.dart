import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_edit_controller.dart';

class CartEditView extends GetView<CartEditController> {
  const CartEditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartEditView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CartEditView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
