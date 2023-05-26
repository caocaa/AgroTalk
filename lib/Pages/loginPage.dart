import 'package:agrotalk/Pages/Admin%20Page/LandingPage.dart';
import 'package:agrotalk/Pages/RegisterPage.dart';
import 'Admin Page/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x80EEEEEE),
                  Color(0xb3DEE5CB),
                  Color(0x99DEE5CB),
                  Color(0xffDEE5CB),
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Image.asset(
                  'assets/image/Logo.png',
                  fit: BoxFit.contain,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LandingPage(),
                      ),
                    );
                  },
                  color: const Color(0xFF4F7D43),
                  textColor: Colors.white,
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Anda belum memiliki akun? ',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Daftar di Sini',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 12,
                          color: Color(0xFF4F7D43)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
