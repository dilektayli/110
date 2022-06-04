import 'package:flutter/material.dart';
import 'Screens/mainPage.dart';
import 'Screens/place.dart';
import 'main.dart';
import 'package:provider/provider.dart';
import 'package:beetourist_app/welcome_page.dart';

void main() {
  runApp(const MyAppBee());
}

class MyAppBee extends StatefulWidget {
  const MyAppBee({Key? key}) : super(key: key);

  @override
  State<MyAppBee> createState() => _MyAppBeeState();
}

class _MyAppBeeState extends State<MyAppBee> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Places>(
      create: (context) => Places(),
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainView(),
      ),
    );
  }
}
