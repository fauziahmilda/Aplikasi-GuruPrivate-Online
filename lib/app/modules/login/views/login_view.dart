// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bazara/app/controllers/auth_controller.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset(
                "assets/logo/logo.png",
                width: 200,
                height: 200,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              padding: MediaQuery.of(context).viewInsets,
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        "Login to Your Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF29313d),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text("Add your detail to login",
                        style: TextStyle(fontSize: 12)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => Get.toNamed(Routes.LOGIN),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text("Login",
                                  style: TextStyle(color: Color(0xFF29313d))),
                            ),
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(color: Colors.brown, width: 3),
                            )),
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.offAllNamed(Routes.SIGN),
                          child: Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Text("Sign-up",
                                  style: TextStyle(color: Color(0xFF29313d))),
                            ),
                            width: 100,
                            decoration: BoxDecoration(border: Border()),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 60, right: 60, top: 20),
                      child: TextField(
                        controller: controller.emailU,
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Color(0xFF3C4D58)),
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
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 60, right: 60, top: 20),
                      child: TextField(
                        controller: controller.pwU,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Color(0xFF3C4D58)),
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
                    ),
                    //LOGIN
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: () => authC.login(
                          controller.emailU.text,
                          controller.pwU.text,
                        ),
                        child: Image.asset(
                          "assets/buttons/login.png",
                          width: 274,
                        ),
                      ),
                    ),
                    //FORGET PASSWORD
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Forgor your password?",
                          style: TextStyle(
                              color: Color(0xFF29313D),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                    //OR
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Image.asset("assets/images/or.png", width: 274),
                    ),
                    //LOGIN W G
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextButton(
                        onPressed: () => authC.loginG(),
                        child: Image.asset(
                          "assets/buttons/g_login.png",
                          width: 274,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'Don’t have an account? Please sign up ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF29313D),
                            )),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.offAllNamed(Routes.SIGN),
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
            )
          ],
        ));
  }
}
