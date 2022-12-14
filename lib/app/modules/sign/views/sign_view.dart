// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../controllers/sign_controller.dart';

class SignView extends GetView<SignController> {
  SignView({Key? key}) : super(key: key);
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF48566A),
      body: Stack(children: [
        Container(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: Image.asset("assets/images/wp2.png"),
          ),
        ),
        //LATAR KOTAK
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: MediaQuery.of(context).viewInsets,
                height: 740,
                width: 350,
                color: Color(0xFFD9D9D9),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Create Account",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: Color(0xFF3E4A5B),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "Add your detail to sign up",
                        style: TextStyle(
                          color: Color(0xFF3E4A5B),
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => Get.offAllNamed(Routes.LOGIN),
                            child: Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 6),
                                child: Text("Login",
                                    style: TextStyle(color: Color(0xFF29313d))),
                              ),
                              width: 100,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Text(
                                  "Sign-Up",
                                  style: TextStyle(color: Color(0xFF29313d)),
                                ),
                              ),
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: Colors.brown, width: 3),
                              )),
                            ),
                          ),
                        ],
                      ),
                      //FULLNAME
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Full Name",
                                style: TextStyle(
                                  color: Color(0xFF29313D),
                                ),
                              ),
                            ),
                            TextField(
                              controller: controller.nameU,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Full name',
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF3C4D58), width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFF3C4D58), width: 2))),
                            ),
                          ],
                        ),
                      ),
                      //E-MAIL
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "E-mail",
                                style: TextStyle(
                                  color: Color(0xFF29313D),
                                ),
                              ),
                            ),
                            TextField(
                              controller: controller.emailU,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'E-mail',
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF3C4D58), width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFF3C4D58), width: 2))),
                            ),
                          ],
                        ),
                      ),
                      //USERNAME
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Username",
                                style: TextStyle(
                                  color: Color(0xFF29313D),
                                ),
                              ),
                            ),
                            TextField(
                              controller: controller.usernameU,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Username',
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF3C4D58), width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFF3C4D58), width: 2))),
                            ),
                          ],
                        ),
                      ),
                      //ADDRESS
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Address",
                                style: TextStyle(
                                  color: Color(0xFF29313D),
                                ),
                              ),
                            ),
                            TextField(
                              controller: controller.addressU,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Address',
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF3C4D58), width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFF3C4D58), width: 2))),
                            ),
                          ],
                        ),
                      ),
                      //PROVINCE & CITY
                      //PHONE NUMBER
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Phone Number",
                                style: TextStyle(
                                  color: Color(0xFF29313D),
                                ),
                              ),
                            ),
                            TextField(
                              controller: controller.phoneU,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Phone Number',
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF3C4D58), width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFF3C4D58), width: 2))),
                            ),
                          ],
                        ),
                      ),
                      //PASSWORD
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Password",
                                style: TextStyle(
                                  color: Color(0xFF29313D),
                                ),
                              ),
                            ),
                            TextField(
                              controller: controller.pwU,
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility),
                                filled: true,
                                hintText: 'Password',
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF3C4D58), width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF3C4D58), width: 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //SIGN-IN BUTTON
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () => authC.signup(
                              controller.nameU.text,
                              controller.emailU.text,
                              controller.usernameU.text,
                              controller.addressU.text,
                              controller.phoneU.text,
                              controller.pwU.text),
                          child: Image.asset(
                            "assets/buttons/signup.png",
                            width: 274,
                          ),
                        ),
                      ),
                      //OR
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Image.asset("assets/images/or.png", width: 274),
                      ),
                      //SIGN-IN W G
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () => authC.loginG(),
                          child: Image.asset(
                            "assets/buttons/g_signup.png",
                            width: 274,
                          ),
                        ),
                      ),
                      //ALREADY HAVE ACCOUNT
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Already a member? Login ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF29313D),
                              )),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.offAllNamed(Routes.LOGIN),
                              text: 'here',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xFF29313D),
                              ))
                        ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
