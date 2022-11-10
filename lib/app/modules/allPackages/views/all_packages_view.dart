import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_packages_controller.dart';

class AllPackagesView extends GetView<AllPackagesController> {
  const AllPackagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllPackagesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AllPackagesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
