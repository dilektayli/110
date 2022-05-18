import 'package:beetourist/anasayfa.dart';
import 'package:beetourist/login_page.dart';
import 'package:beetourist/signup_page.dart';
import 'package:beetourist/welcome_page.dart';
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
