import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpesa_flutter_plugin/initializer.dart';
import 'package:save_app/authentication/authentication.dart';
import 'package:save_app/firebase_options.dart';
import 'package:save_app/pages/homepage.dart';
import 'package:save_app/pages/login_page.dart';
import 'package:save_app/pages/signup_page.dart';
import 'package:save_app/controllers/otp_controller.dart';
import 'package:save_app/pages/single_goal_screen.dart';

import 'authentication/mpesa_keys.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) {
    Get.put(AuthenticationRepository());
    Get.put(OTPController()); // Register OTPController
  });
  myMpesaKeys requiredkeys = myMpesaKeys();
  String mConsumerKey= requiredkeys.kConsumerKey;
  String mConsumerSecret= requiredkeys.kConsumerSecret;
  MpesaFlutterPlugin.setConsumerKey(mConsumerKey);
  MpesaFlutterPlugin.setConsumerSecret(mConsumerSecret);
  runApp(GetMaterialApp(
    key: UniqueKey(),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}