// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_guru_controller.dart';

class DataGuruView extends GetView<DataGuruController> {
  const DataGuruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataGuruView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataGuruView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
