import 'dart:async';

import 'package:agrotalk/Pages/User%20Page/LandingPageUser.dart';
import 'package:agrotalk/Pages/User%20Page/LandingPageUser.dart';
import 'package:agrotalk/Pages/loginPage.dart';
import 'package:agrotalk/constant.dart';
import 'package:agrotalk/models/api_response.dart';
import 'package:agrotalk/constant.dart';
import 'package:agrotalk/models/api_response.dart';
import 'package:flutter/material.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:agrotalk/services/user_service.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void _loadUserInfo() async {
    String token = await getToken();
    if (token == '') {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false);
    }
    // else {
    //   ApiResponse response = await getUserDetail();
    //   if (response.error == null) {
    //     Navigator.of(context).pushAndRemoveUntil(
    //         MaterialPageRoute(builder: (context) => LandingPageUser()),
    //         (route) => false);
    //   } else if (response.error == unauthorized) {
    //     Navigator.of(context).pushAndRemoveUntil(
    //         MaterialPageRoute(builder: (context) => LoginPage()),
    //         (route) => false);
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //       content: Text('${response.error}'),
    //     ));
    //   }
    // }
  }

  nextPage() async {
  nextPage() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
          (route) => false);
    });
    return Timer(duration, () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
          (route) => false);
    });
  }

  @override
  void initState() {
    _loadUserInfo();
    _loadUserInfo();
    super.initState();
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
              Image.asset(
                'assets/image/Logo.png',
              Image.asset(
                'assets/image/Logo.png',
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

