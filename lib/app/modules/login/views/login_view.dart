import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            height: 600,
            color: Color(0xFFD9D9D9),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Login to Your Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF29313d),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Add your detail to login",
                    style: TextStyle(fontSize: 12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        print("Login page");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 6),
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
                          child: Text("Sign-in",
                              style: TextStyle(color: Color(0xFF29313d))),
                        ),
                        width: 100,
                        decoration: BoxDecoration(border: Border()),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Color(0xFF3C4D58)),
                        hintText: 'Username',
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF3C4D58), width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF3C4D58), width: 2))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 20),
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        filled: true,
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Color(0xFF3C4D58)),
                        hintText: 'Password',
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF3C4D58), width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF3C4D58), width: 2))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () => Get.offAllNamed(Routes.HOME),
                    child: Image.asset(
                      "assets/buttons/login.png",
                      width: 274,
                    ),
                  ),
                ),
                //LOGIN
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
                    onPressed: () {
                      print("haha");
                    },
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
