import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_guru_controller.dart';

class DetailGuruView extends GetView<DetailGuruController> {
  const DetailGuruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [Image.asset("assets/images/t1.png")],
        ),
      ),
      bottomNavigationBar: Container(
        height: 56,
        margin: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Row(
          children: <Widget>[
            Container(
              width: 66,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.chat, color: Colors.white),
                  Text("CHAT", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              width: 66,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.notifications_active, color: Colors.white),
                  Text("NOTIF", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text("BUY NOW",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ),
          ],
        ),
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
