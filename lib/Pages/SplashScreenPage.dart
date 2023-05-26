import 'dart:async';

import 'package:agrotalk/Pages/loginPage.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  nextPage()async{
    var duration = Duration(seconds: 5);
    return Timer(
      duration, (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()
      ), (route) => false);
      }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/image/Logo.png',
                height: 200,
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}