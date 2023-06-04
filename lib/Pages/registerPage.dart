import 'package:agrotalk/Pages/LoginPage.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:flutter/material.dart';
import 'User Page/LandingPageUser.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  bool loading = false;

  void registbutton() {
    setState(() {
      loading = true;
    });
    iniRegister(name.text, email.text, password.text).then((value) {
      setState(() {
        print(value);
        if (value == "success") {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LoginPage()),
              (route) => false);
        } else {
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
                        controller: name,
                        decoration: const InputDecoration(
                          hintText: 'Nama',
                        ),
                      ),
                      TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                      TextFormField(
                        controller: confirmpassword,
                        validator: (value) {
                          value == password;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Konfirmasi Password',
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
                        registbutton();
                      });
                    }
                  },
                  color: const Color(0xFF4F7D43),
                  textColor: Colors.white,
                  child: const Text(
                    'Daftar',
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
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login di Sini',
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
