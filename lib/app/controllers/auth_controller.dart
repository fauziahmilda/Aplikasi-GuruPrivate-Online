// ignore_for_file: unnecessary_overrides, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_bazara/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
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
  Future<void> login() async {
    //BUAT FUNGSI LOGIN DENGAN EMAIL DAN PASSWORD
    try {
      await _googleSignIn.signOut();
      await _googleSignIn.signIn().then((value) => _currentUser = value);
      //cek berhasil apa nggak
      await _googleSignIn.isSignedIn().then((value) {
        if (value) {
          //login berhasil
          print(_currentUser);

          FirebaseAuth.instance
              .signInWithEmailAndPassword(email: "email", password: "password");
          isAuth.value = true;
          Get.offAllNamed(Routes.HOME);
        } else {
          //login gagal
          print("LOGIN GAGAL");
        }
      });
    } catch (error) {
      print(error);
    }
    // Get.offAllNamed(Routes.HOME);
  }

//CONTROLER UNTUK LOGOUT
  Future<void> logout() async {
    await _googleSignIn.disconnect();
    await _googleSignIn.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }

  //CONTROLLER UNTUK SIGNIN DENGAN GOOGLE
  Future<void> signinG() async {
    //BUAT FUNGSI SIGNIN DENGAN GOOGLE
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
