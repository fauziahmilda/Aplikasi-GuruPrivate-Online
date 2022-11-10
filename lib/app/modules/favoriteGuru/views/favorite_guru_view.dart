import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favorite_guru_controller.dart';

class FavoriteGuruView extends GetView<FavoriteGuruController> {
  const FavoriteGuruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavoriteGuruView'),
        centerTitle: true,
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
