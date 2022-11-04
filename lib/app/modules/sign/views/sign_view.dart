import 'package:flutter/material.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/sign_controller.dart';

class SignView extends GetView<SignController> {
  const SignView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF48566A),
      body: Stack(children: [
        Container(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: Image.asset("assets/images/wp2.png"),
          ),
        ),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 680,
              width: 350,
              color: Color(0xFFD9D9D9),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Create Account",
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
                      FlatButton(
                        onPressed: () => Get.offAllNamed(Routes.LOGIN),
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: Text("Login"),
                          ),
                          width: 100,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: Text("Sign-in"),
                          ),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(color: Colors.brown, width: 3),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          textAlign: TextAlign.start,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Full name',
                              labelStyle: TextStyle(color: Color(0xFF3C4D58)),
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
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
