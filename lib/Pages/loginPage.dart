import 'package:agrotalk/Pages/Admin%20Page/LandingPage.dart';
import 'package:agrotalk/Pages/RegisterPage.dart';
import 'package:agrotalk/Pages/User%20Page/LandingPageUser.dart';
import 'package:agrotalk/models/api_response.dart';
import 'package:agrotalk/models/user.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Admin Page/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool loading = false;

  bool _obscureText = true;

  void _toggelPasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void getRoleLogin() {
    setState(() {
      loading = true;
    });
    iniLogin(email.text, password.text).then((value) {
      setState(() {
        if (value == "admin") {
          print("login sebagai Admin");
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LandingPage()),
              (route) => false);
        } else if (value == "user") {
          print("login sebagai user");
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LandingPageUser()),
              (route) => false);
        } else if (value == "Null") {
          print("Periksa kembali");
        }
      });
    });
  }

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
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: email,
                        validator: (val) =>
                            val!.isEmpty ? 'Invalid email address' : null,
                        decoration: const InputDecoration(
                          hintText: 'masukan email',
                          labelText: 'Email',
                        ),
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        controller: password,
                        validator: (val) => val!.length < 6
                            ? 'Required at least 6 chars'
                            : null,
                        decoration: InputDecoration(
                            hintText: 'masukan kata sandi di sini',
                            labelText: 'Password',
                            suffix: InkWell(
                              onTap: _toggelPasswordView,
                              child: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            )),
                      ),
                    ],
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
                    if (formkey.currentState!.validate()) {
                      setState(() {
                        loading = true;
                        getRoleLogin();
                      });
                    }
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
