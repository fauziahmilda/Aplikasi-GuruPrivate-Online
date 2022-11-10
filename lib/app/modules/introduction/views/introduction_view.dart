// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../routes/app_pages.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IntroductionScreen(
            globalBackgroundColor: Color(0xFFE1E5EA),
            pages: [
              PageViewModel(
                title: "Find Your Privat Teacher",
                body: "Here you can find your privat teacher just by click",
                image: Center(
                  child: Image.asset("assets/logo/logo.png", height: 150),
                ),
              ),
              PageViewModel(
                title: "Get Your Dreams",
                body: "Here you can learn from the master",
                image: Center(
                  child: Image.asset("assets/logo/logo.png", height: 150),
                ),
              ),
              PageViewModel(
                title: "Daftarkan dirimu sekarang juga !",
                body: "Here you can reach your dreams, so never give up",
                image: Center(
                  child: Image.asset("assets/logo/logo.png", height: 150),
                ),
              )
            ],
            onDone: () => Get.offAllNamed(Routes.LOGIN),
            onSkip: () {
              // You can also override onSkip callback
            },
            showBackButton: false,
            showSkipButton: true,
            skip: const Text(
              "SKIP",
              style: TextStyle(color: Color(0xFF29313d)),
            ),
            next: const Text(
              "NEXT",
              style: TextStyle(color: Color(0xFF29313d)),
            ),
            done: const Text("Login",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Color(0xFF29313d))),
            dotsDecorator: DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(20.0, 10.0),
                activeColor: Color(0xFF48566A),
                color: Color(0xFF584A3C),
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
        ],
      ),
    );
  }
}
