// import 'dart:js';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';

import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                width: Get.width * 100 / 100,
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
                          onPressed: () => Get.offAllNamed(Routes.MESSAGE),
                          icon: Image.asset(
                            "assets/buttons/menu-msg.png",
                          ),
                        ),
                        IconButton(
                          iconSize: 50,
                          onPressed: () => Get.offAllNamed(Routes.SEARCH),
                          icon: Image.asset("assets/buttons/menu-scr.png"),
                        ),
                        IconButton(
                          iconSize: 60,
                          onPressed: () => Get.offAllNamed(Routes.HOME),
                          icon: Image.asset("assets/buttons/menu-home.png"),
                        ),
                        IconButton(
                          iconSize: 50,
                          onPressed: () => Get.offAllNamed(Routes.CART),
                          icon: Image.asset(
                            "assets/buttons/menu-cart.png",
                          ),
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () => Get.offAllNamed(Routes.SETTING),
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
                    width: Get.width * 100 / 100,
                    height: Get.height * 50 / 100,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //EDIT FULLNAME
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //TEXT JUDUL
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Full Name",
                                      style: TextStyle(
                                        color: Color(0xFF29313D),
                                      ),
                                    ),
                                  ),
                                ),
                                //EDIT
                                Container(
                                  width: 350,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFF29313D),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: TextField(
                                            enabled: false,
                                            controller: controller.nameU,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                            iconSize: 20,
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  backgroundColor:
                                                      Color(0xFFE1E5EA),
                                                  content: TextField(
                                                    controller:
                                                        controller.nameU,
                                                    autofocus: true,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter your full name",
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF29313D),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        IconButton(
                                                            iconSize: 100,
                                                            onPressed: () =>
                                                                Get.back(),
                                                            icon: Image.asset(
                                                              "assets/buttons/cancel.png",
                                                            )),
                                                        IconButton(
                                                            iconSize: 100,
                                                            onPressed: () {
                                                              Get.defaultDialog(
                                                                  title: "Maaf",
                                                                  middleText:
                                                                      "Layanan ini belum tersedia");
                                                            },
                                                            icon: Image.asset(
                                                              "assets/buttons/save.png",
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                            icon: Icon(Icons.edit)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            //EDIT USERNAME
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //TEXT JUDUL
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Username",
                                      style: TextStyle(
                                        color: Color(0xFF29313D),
                                      ),
                                    ),
                                  ),
                                ),
                                //EDIT
                                Container(
                                  width: 350,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFF29313D),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: TextField(
                                            enabled: false,
                                            controller: controller.usernameU,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                            iconSize: 20,
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  backgroundColor:
                                                      Color(0xFFE1E5EA),
                                                  content: TextField(
                                                    controller:
                                                        controller.usernameU,
                                                    autofocus: true,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Change your username",
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF29313D),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
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
                                            },
                                            icon: Icon(Icons.edit)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            //EDIT EMAIL
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //TEXT JUDUL
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                        color: Color(0xFF29313D),
                                      ),
                                    ),
                                  ),
                                ),
                                //EDIT
                                Container(
                                  width: 350,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFF29313D),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: TextField(
                                            enabled: false,
                                            controller: controller.emailU,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                            iconSize: 20,
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  backgroundColor:
                                                      Color(0xFFE1E5EA),
                                                  content: TextField(
                                                    controller:
                                                        controller.emailU,
                                                    autofocus: true,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Change your email",
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF29313D),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
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
                                            },
                                            icon: Icon(Icons.edit)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            //EDIT ADDRESS
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //TEXT JUDUL
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Address",
                                      style: TextStyle(
                                        color: Color(0xFF29313D),
                                      ),
                                    ),
                                  ),
                                ),
                                //EDIT
                                Container(
                                  width: 350,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFF29313D),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: TextField(
                                            enabled: false,
                                            controller: controller.addressU,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                            iconSize: 20,
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  backgroundColor:
                                                      Color(0xFFE1E5EA),
                                                  content: TextField(
                                                    controller:
                                                        controller.addressU,
                                                    autofocus: true,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Change your address",
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF29313D),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
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
                                            },
                                            icon: Icon(Icons.edit)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            //EDIT PHONE NUMBER
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //TEXT JUDUL
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Phone Number",
                                      style: TextStyle(
                                        color: Color(0xFF29313D),
                                      ),
                                    ),
                                  ),
                                ),
                                //EDIT
                                Container(
                                  width: 350,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFF29313D),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: TextField(
                                            enabled: false,
                                            controller: controller.phoneU,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                            iconSize: 20,
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  backgroundColor:
                                                      Color(0xFFE1E5EA),
                                                  content: TextField(
                                                    controller:
                                                        controller.phoneU,
                                                    autofocus: true,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Change your phone number",
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF29313D),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
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
                                            },
                                            icon: Icon(Icons.edit)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            //EDIT PASSWORD
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //TEXT JUDUL
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Password",
                                      style: TextStyle(
                                        color: Color(0xFF29313D),
                                      ),
                                    ),
                                  ),
                                ),
                                //EDIT
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50),
                                  child: Container(
                                    width: 350,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color(0xFF29313D),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: TextField(
                                              obscureText: true,
                                              obscuringCharacter: "*",
                                              enabled: false,
                                              controller: controller.pwU,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                              iconSize: 20,
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    backgroundColor:
                                                        Color(0xFFE1E5EA),
                                                    content: TextField(
                                                      controller:
                                                          controller.pwU,
                                                      autofocus: true,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            "Change your password",
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF29313D),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    actions: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
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
                                              },
                                              icon: Icon(Icons.edit)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
