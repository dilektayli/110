import 'package:flutter/material.dart';
import 'package:project/Screens/mainPage.dart';
import 'package:project/Screens/places.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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





