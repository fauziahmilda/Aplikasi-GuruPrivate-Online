import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return FutureBuilder(
              future: Future.delayed(Duration(seconds: 3)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SplashScreen();
                } else {
                  return GetMaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: "Application",
                    initialRoute: Routes.MESSAGE,
                    getPages: AppPages.routes,
                  );
                }
              });
        }
        return Loading();
      },
    );
  }
}
