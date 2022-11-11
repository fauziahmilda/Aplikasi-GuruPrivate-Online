// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/favorite_guru_controller.dart';

class FavoriteGuruView extends GetView<FavoriteGuruController> {
  const FavoriteGuruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      appBar: AppBar(
        title: const Text('Favorite'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF7E6A56),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.HOME),
          icon: Icon(Icons.arrow_back),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Center(
        child: Text(
          'FavoriteGuruView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
