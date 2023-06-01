import 'package:agrotalk/Pages/SplashScreenPage.dart';
import 'package:agrotalk/Pages/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AgroTalk',
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: const LoginPage(),
    );
  }
}
