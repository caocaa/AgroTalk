import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'NotificationUserPage.dart';
import 'SearchUserPage.dart';

class NewsDetailPage extends StatefulWidget {
  const NewsDetailPage({super.key});

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
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
      body: SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.maxFinite,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/artikel d.jpg"),
                            fit: BoxFit.cover),
                      ),
                    )),
                Positioned(
                  top: 250,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Taman Bermain Di Tengah Lahan Kerap Membuat Petani Kesusahan Dalam Bekerja.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "LatoBold",
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Taman bermain di tengah lahan kerap membuat petani kesusahan dalam bekerja. Sebagai sektor pertanian yang mengandalkan lahan dan alam sebagai sumber daya utama, keberadaan taman bermain dapat mengganggu produktivitas dan efisiensi kerja petani. Masalah ini semakin sering terjadi di kawasan perkotaan, di mana lahan pertanian semakin berkurang dan diambil alih untuk pembangunan taman bermain dan fasilitas publik lainnya.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Keberadaan taman bermain yang terletak di tengah-tengah lahan pertanian dapat menghambat akses petani ke lahan mereka sendiri. Hal ini dapat mempersulit transportasi dan distribusi hasil panen, yang pada akhirnya dapat mempengaruhi kualitas dan kuantitas produksi pertanian.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Taman bermain di tengah lahan kerap membuat petani kesusahan dalam bekerja. Sebagai sektor pertanian yang mengandalkan lahan dan alam sebagai sumber daya utama, keberadaan taman bermain dapat mengganggu produktivitas dan efisiensi kerja petani. Masalah ini semakin sering terjadi di kawasan perkotaan, di mana lahan pertanian semakin berkurang dan diambil alih untuk pembangunan taman bermain dan fasilitas publik lainnya.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
