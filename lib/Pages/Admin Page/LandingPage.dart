import 'package:agrotalk/Pages/Admin%20Page/RnBPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomePage.dart';
import 'ArticlePage.dart';
import 'PopularPage.dart';
import 'ProfilePage.dart';
import 'NotificationPage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new HomePageAdmin(),
    new ArticlePage(),
    new PopularPage(),
    new RnBPage()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/image/Logo.png',
          height: 70,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.notifications,
                color: Color(0xFF4F7D43),
                size: 30,
              )),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
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
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          iconSize: 35,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color(0xFF4F7D43),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.earthAsia,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: 'Home Page',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_library_books,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: 'Artikel Page',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.trophy,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: 'Popular Page',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.report_rounded,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: 'Report n Block',
            ),
          ],
          currentIndex: _bottomNavCurrentIndex,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
