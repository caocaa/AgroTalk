import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomePage.dart';
import 'NotificationUserPage.dart';
import 'NewsPage.dart';
import 'ArticleUserPage.dart';
import 'ProfileUserPage.dart';
import 'SearchUserPage.dart';

class LandingPageUser extends StatefulWidget {
  const LandingPageUser({super.key});

  @override
  State<LandingPageUser> createState() => _LandingPageUserState();
}

class _LandingPageUserState extends State<LandingPageUser> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new HomePage(),
    new NewsPage(),
    new ArticleUserPage(),
    new ProfileUserPage(),
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
                    builder: (context) => const SearchUserPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Color(0xFF4F7D43),
                size: 30,
              )),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationUserPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.notifications,
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
                Icons.newspaper,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: 'News Page',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_library_books,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: 'Artikel User',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: 'Profile',
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
