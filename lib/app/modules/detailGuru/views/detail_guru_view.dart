import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_guru_controller.dart';

class DetailGuruView extends GetView<DetailGuruController> {
  const DetailGuruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailGuruView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailGuruView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
