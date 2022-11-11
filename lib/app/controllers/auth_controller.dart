// ignore_for_file: unnecessary_overrides, avoid_print

import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_bazara/app/modules/login/controllers/login_controller.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final data = Get.put(LoginController());
  // final emailU = TextEditingController();
  // final pwU = TextEditingController();
  var displayName = ''; //to display user full name when sign in
  var isSkipIntro = false.obs;
  var isAuth = false.obs;

//Initialize GoogleSignIn with the scopes you want:
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    signInOption: SignInOption.standard,
    // scopes: [
    //   'email',
    //   'https://www.googleapis.com/auth/contacts.readonly',
    // ],
  );
  GoogleSignInAccount? _currentUser;
  UserCredential? userCredential;

  //FUNGSI YANG AKAN DIJALANKAN PERTAMA KALI
  Future<void> firstInitialized() async {
    await autoLogin().then((value) {
      if (value) {
        isAuth.value = true;
      }
    });
    await skipIntro().then((value) {
      if (value) {
        isSkipIntro.value = true;
      }
    });
  }

  Future<bool> skipIntro() async {
    //isSkip: TRUE
    final box = GetStorage();
    if (box.read('skipIntro') != null || box.read('skipIntro') == true) {
      return true;
    }
    return false;
  }

  Future<bool> autoLogin() async {
    //isAuth: TRUE=> auto login
    try {
      final isSignIn = await _googleSignIn.isSignedIn();
      if (isSignIn) {
        return true;
      }
      return false;
    } catch (error) {
      print(error);
      return false;
    }
  }

  //CONTROLER UNTUK LOGIN MENGGUNAKAN GOOGLE
  Future<void> loginG() async {
    //BUAT FUNGSI LOGIN DENGAN GOOGLE
    try {
      await _googleSignIn
          .signOut(); //untuk handle kebocoran data user sebelumnya

      //untuk mendapatkan google account: user
      await _googleSignIn.signIn().then((value) => _currentUser = value);
      //cek login atau tidak
      final isSignIn = await _googleSignIn.isSignedIn();
      if (isSignIn) {
        print("USER DATA:");
        print(_currentUser);
        final googleAuth = await _currentUser!.authentication;

        final credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );

        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) => userCredential = value);
        print("USER CREDENTIAL:");
        print(userCredential);

        //simpan status USER di get storage, skip intro
        final box = GetStorage();
        //simpan di memori hp, selama appnya ga diuninstall, local memori hp
        if (box.read('skipIntro') != null) {
          box.remove('skipIntro');
        }
        box.write('skipIntro', true);

        isAuth.value = true;
        Get.offAllNamed(Routes.HOME);
      } else {
        print("LOGIN GAGAL");
      }
    } catch (error) {
      print(error);
    }
    // Get.offAllNamed(Routes.HOME);
  }

  //CONTROLER UNTUK LOGIN MENGGUNAKAN EMAIL DAN PASSWORD
  Future<void> login(String email, String password) async {
    //BUAT FUNGSI LOGIN DENGAN EMAIL DAN PASSWORD
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
          title: "User Tidak ditemukan",
          middleText: "Masukkan kombinasi yang tepat.",
        );
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
          title: "Password Salah",
          middleText: "Masukkan Password yang tepat.",
        );
        print('Wrong password provided for that user.');
      }
    }
    // Get.offAllNamed(Routes.HOME);
  }

//CONTROLER UNTUK LOGOUT
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    // await _googleSignIn.disconnect();
    await _googleSignIn.signOut();

    Get.offAllNamed(Routes.LOGIN);

    // Get.offAllNamed(Routes.LOGIN);
  }

  //CONTROLLER UNTUK SIGNUP DENGAN GOOGLE
  Future<void> signup(String name, String email, String username,
      String address, String phone, String password) async {
    //BUAT FUNGSI SIGNUP DENGAN GOOGLE
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.defaultDialog(
          title: "Password Lemah",
          middleText: "Masukkan Password yang lebih kuat.",
        );
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Get.defaultDialog(
          title: "E-mail telah digunakan",
          middleText: "Masukkan E-mail lain.",
        );
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
