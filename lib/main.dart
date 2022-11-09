import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'app/controllers/auth_controller.dart';
import 'app/routes/app_pages.dart';

import 'app/utils/error_view.dart';
import 'app/utils/loading_view.dart';
import 'app/widgets/splash.dart';

import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const SomethingWentWrong();
        } else if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: Routes.PHONE,
            getPages: AppPages.routes,
          );
          // return FutureBuilder(
          //     future: Future.delayed(const Duration(seconds: 2)),
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState == ConnectionState.waiting) {
          //         return const SplashScreen();
          //       } else {
          //         //OBX untuk memantau kondisi perubahan var di controller
          //         return Obx(
          //           () => GetMaterialApp(
          //             debugShowCheckedModeBanner: false,
          //             title: "Application",
          //             initialRoute: authC.isSkipIntro.isTrue
          //                 ? authC.isAuth.isTrue
          //                     ? Routes.HOME
          //                     : Routes.LOGIN
          //                 : Routes.INTRODUCTION,
          //             getPages: AppPages.routes,
          //           ),
          //         );
          //       }
          //     });
        }
        return const Loading();
      },
    );
  }
}
