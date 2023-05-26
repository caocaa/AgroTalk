// ignore: unused_import
import 'package:agrotalk/Pages/Admin%20Page/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
            color: const Color(0xFF4F7D43),
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
              Icons.notifications,
              color: Color(0xFF4F7D43),
              size: 30,
            ),
            padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
          ),
        ],
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // isi notifikasi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.warning_outlined,
                              size: 50,
                              color: Colors.redAccent,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Segera Tindak Lanjuti!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "Ada upaya masuk yang mencurigakan ke akun Anda dari perangkat baru pada 15 Maret 2023. Tinjau Sekarang.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'lato',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  // isi notifikasi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: const CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/image/user4.jpg'),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: const CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/image/user5.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, bottom: 10, right: 20),
                            child: Expanded(
                              child: Column(
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Aida Sukitama, Gita M. Riyadhi, dan 115 pengguna lainnya mengirimkan permintaan unggah artikel. Lihat Sekarang.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'lato',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // isi notifikasi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.report_outlined,
                              size: 60,
                              color: const Color(0xFF4F7D43),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Periksa Sekarang!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "Ada sebanyak 250 laporan groker yang belum diperiksa. Lakukan pemerikasaan sekarang.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'lato',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  // isi notifikasi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: const CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/image/user3.jpg'),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: const CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/image/user2.jpg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, bottom: 10, right: 20),
                            child: Expanded(
                              child: Column(
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Howard, Lia Azzahra, dan 3 pengguna lainnya mengirimkan permintaan laporan pengguna. Periksa Sekarang. ",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'lato',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //isi notifikasi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.warning_outlined,
                              size: 50,
                              color: Colors.redAccent,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Segera Tindak Lanjuti!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "Ada upaya masuk yang mencurigakan ke akun Anda dari perangkat baru pada 15 Maret 2023. Tinjau Sekarang.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'lato',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  //isi notifikasi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.warning_outlined,
                              size: 50,
                              color: Colors.redAccent,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Segera Tindak Lanjuti!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "Ada upaya masuk yang mencurigakan ke akun Anda dari perangkat baru pada 15 Maret 2023. Tinjau Sekarang.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'lato',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  //isi notifikasi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.report_outlined,
                              size: 60,
                              color: const Color(0xFF4F7D43),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Periksa Sekarang!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "Ada sebanyak 250 laporan groker yang belum diperiksa. Lakukan pemerikasaan sekarang.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'lato',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  // isi notifikasi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: const CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/image/user3.jpg'),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: const CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/image/user2.jpg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, bottom: 10, right: 20),
                            child: Expanded(
                              child: Column(
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Howard, Lia Azzahra, dan 3 pengguna lainnya mengirimkan permintaan laporan pengguna. Periksa Sekarang. ",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'lato',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
