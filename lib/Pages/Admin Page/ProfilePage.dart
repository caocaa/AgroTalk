import 'package:agrotalk/Pages/Admin%20Page/NotificationPage.dart';
import 'package:agrotalk/models/user.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:flutter/material.dart';
import '../loginPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'LandingPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? user;

  void initState() {
    super.initState();
    getUserDetails();
  }

  void getUserDetails() {
    getUser().then((value) {
      print(value);
      setState(() {
        user = value;
        print(user);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF4F7D43),
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.account_circle_rounded,
              color: Color(0xFF4F7D43),
              size: 30,
            ),
            padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
          ),
        ],
      ),
      body: (user == null)
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(54, 238, 238, 220),
                      Color.fromARGB(174, 222, 229, 210),
                    ]),
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: new Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'http://192.168.1.193:8000/gambar/${user?.image}'),
                            radius: 100.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "AgroTalk Admin",
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Lato"),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              user!.name,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: "Lato"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MaterialButton(
                                height: 50,
                                minWidth: 130,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                  );
                                },
                                color: const Color(0xFF4F7D43),
                                textColor: Colors.white,
                                child: const Text(
                                  'Keluar',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
