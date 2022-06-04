//Bu sayfa Mehmet Kaan Tokay tarafından oluşturulmuştur.

import 'package:beetourist_app/anasayfa.dart';
import 'package:beetourist_app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'BeeTourist',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          dividerColor: Colors.black,
        ),
        home: WelcomePage(),   //WelcomePage(),
    );
  }
}

