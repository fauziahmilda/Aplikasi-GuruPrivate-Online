// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../data/all_guru.dart';
import '../controllers/kotak_guru_controller.dart';
// import 'package:navigator/navigator.dart';

class KotakGuruView extends GetView<KotakGuruController> {
  KotakGuruView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final guruId =
        ModalRoute.of(context)?.settings?.arguments as String; // is the id!
    final guru = Provider.of<AllGuru>(context).findById(guruId);
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 100,
          color: Colors.blueAccent,
          child: Column(
            children: [
              Container(
                  child: Image.asset(
                "assets/images/t3.png",
                width: 75,
              )),
              Container(
                child: Column(
                  children: [
                    Text("${guru.name_guru}"),
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
