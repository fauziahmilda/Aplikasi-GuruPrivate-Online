import 'package:flutter/material.dart';

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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100, top: 20),
                    child: Row(
                      children: [
                        SizedBox(width: 1),
                        Expanded(
                            child: Text(
                          "Login",
                          style: TextStyle(fontSize: 15),
                        )),
                        Expanded(
                            child: Text("Sign-in",
                                style: TextStyle(fontSize: 15))),
                      ],
                    ),
                  ),
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
                  child: Image.asset(
                    "assets/buttons/login.png",
                    width: 274,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Forgor your password?",
                      style: TextStyle(
                          color: Color(0xFF29313D),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Image.asset(
                    "assets/images/or.png",
                    width: 274,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    "assets/buttons/g_login.png",
                    width: 274,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Don’t have an account? Please sign up here",
                      style: TextStyle(
                        color: Color(0xFF29313D),
                        fontSize: 15,
                      ),
                    )),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
