import 'package:beetourist_app/anasayfa.dart';
import 'package:beetourist_app/login_page.dart';
import 'package:beetourist_app/signup_page.dart';
import 'package:beetourist_app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'BeeTourist',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: WelcomePage()
    );
  }
}
