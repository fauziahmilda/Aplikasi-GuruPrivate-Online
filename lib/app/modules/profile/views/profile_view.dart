// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';

import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future openDialog() {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Color(0xFFE1E5EA),
          content: TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Enter your full name",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF29313D),
                ),
              ),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    iconSize: 100,
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/buttons/cancel.png",
                    )),
                IconButton(
                    iconSize: 100,
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/buttons/save.png",
                    )),
              ],
            )
          ],
        ),
      );
    }

    void submit() {
      Navigator.of(context).pop();
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF48566A),
        appBar: AppBar(
          title: const Text('Profile Setting'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF584A3C),
          leading: IconButton(
            onPressed: () => Get.offAllNamed(Routes.SETTING),
            icon: Icon(Icons.arrow_back),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Stack(
            children: [
              Container(
                color: Color(0xFFD9D9D9),
                height: 75,
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80)),
                child: Container(
                  width: Get.width,
                  height: 75,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    //ICON ICON
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          iconSize: 40,
                          onPressed: () {
                            print("msg page");
                          },
                          icon: Image.asset(
                            "assets/buttons/menu-msg.png",
                          ),
                        ),
                        IconButton(
                          iconSize: 50,
                          onPressed: () {
                            print("search page");
                          },
                          icon: Image.asset("assets/buttons/menu-scr.png"),
                        ),
                        IconButton(
                          iconSize: 60,
                          onPressed: () => Get.offAllNamed(Routes.HOME),
                          icon: Image.asset("assets/buttons/menu-home.png"),
                        ),
                        IconButton(
                          iconSize: 50,
                          onPressed: () {
                            print("cart page");
                          },
                          icon: Image.asset(
                            "assets/buttons/menu-cart.png",
                          ),
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () => Get.offAllNamed(Routes.PROFILE),
                          icon: Image.asset(
                            "assets/buttons/menu-profile.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            //BAGIAN ATAS FOTO
            Stack(
              children: [
                //BUBLE BACKGORUND
                Container(
                  child: Image.asset("assets/images/bb2-atas.png"),
                ),
                //FOTO PROFILE
                Container(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.topCenter,
                  child: Column(children: [
                    Image.asset(
                      "assets/images/dira.png",
                      width: 100,
                    ),
                    IconButton(
                      onPressed: (() {
                        print("ganti foto profile");
                      }),
                      icon: Icon(Icons.camera_alt),
                      color: Colors.white,
                    ),
                  ]),
                ),
              ],
            ),
            //BAGIAN CONTAINER PROFILE
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  child: Container(
                    color: Color(0xFFD9D9D9),
                    width: Get.width,
                    height: 450,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Column(
                        children: [
                          //TEXT JUDUL
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Full Name",
                              style: TextStyle(
                                color: Color(0xFF29313D),
                              ),
                            ),
                          ),
                          //EDIT
                          Container(
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFF29313D),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  iconSize: 20,
                                  onPressed: () {
                                    openDialog();
                                  },
                                  icon: Icon(Icons.edit)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
