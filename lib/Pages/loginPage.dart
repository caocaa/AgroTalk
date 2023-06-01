import 'package:agrotalk/Pages/Admin%20Page/LandingPage.dart';
import 'package:agrotalk/Pages/RegisterPage.dart';
import 'package:agrotalk/Pages/User%20Page/LandingPageUser.dart';
import 'package:agrotalk/models/api_response.dart';
import 'package:agrotalk/models/user.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
        }
      });
    });
  }

  // void _loginUser() async {
  //   ApiResponse response = await login(email.text, password.text);
  //   return print(response.data.toString());
  //   if (response.error == null) {
  //     _saveAndRedirectToLandingPageUser(response.data as User);
  //   } else {
  //     setState(() {
  //       loading = false;
  //     });
  //     print(response.error);
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text('${response.error}')));
  //   }
  // }

  // void _saveAndRedirectToLandingPageUser(User user) async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   await pref.setString('token', user.token ?? '');
  //   await pref.setInt('id', user.id ?? 0);
  //   Navigator.of(context).pushAndRemoveUntil(
  //       MaterialPageRoute(builder: (context) => LandingPageUser()),
  //       (route) => false);
  // }

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
                          hintText: 'Email',
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: password,
                        validator: (val) => val!.length < 6
                            ? 'Required at least 6 chars'
                            : null,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ],
                  ),
                ),
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
                          hintText: 'Email',
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: password,
                        validator: (val) => val!.length < 6
                            ? 'Required at least 6 chars'
                            : null,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
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
                        //_loginUser();
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
