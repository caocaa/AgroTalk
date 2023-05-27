import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_card/image_card.dart';

import 'NewsDetailPage.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFDEE5CB),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.search_rounded,
                          color: Color(0xFF4F7D43),
                          size: 20,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Cari Artikel',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Artikel yang Banyak dilihat
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Banyak Dibaca",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lato"),
                    ),
                  ],
                ),
              ),
              // TransparentImageCard(
              //   width: 200,
              //   imageProvider: AssetImage('assets/mockup.png'),
              //   tags: [
              //     _tag('Product', () {}),
              //   ],
              //   title: _title(color: Colors.white),
              //   description: _content(color: Colors.white),
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewsDetailPage(),
                            ),
                          );
                        },
                        child: TransparentImageCard(
                          width: 200,
                          imageProvider:
                              AssetImage('assets/image/artikel b.jpg'),
                          tags: [
                            Text(
                              'Pupuk',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                          title: Text(
                            'Rekomendasi pupuk untuk pohon mangga',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TransparentImageCard(
                        width: 200,
                        imageProvider: AssetImage('assets/image/artikel c.jpg'),
                        tags: [
                          Text(
                            'Pupuk',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                        title: Text(
                          'Rekomendasi pupuk untuk pohon mangga',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Artikel Populer (Banyak Disukai)
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFDEE5CB),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Populer",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lato"),
                          ),
                        ],
                      ),
                    ),
                    // TransparentImageCard(
                    //   width: 200,
                    //   imageProvider: AssetImage('assets/mockup.png'),
                    //   tags: [
                    //     _tag('Product', () {}),
                    //   ],
                    //   title: _title(color: Colors.white),
                    //   description: _content(color: Colors.white),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TransparentImageCard(
                            imageProvider:
                                AssetImage('assets/image/artikel d.jpg'),
                            tags: [
                              Text(
                                'Pupuk',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                            title: Text(
                              'Rekomendasi pupuk untuk pohon mangga',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Artikel terbaru
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Terbaru",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lato"),
                    ),
                  ],
                ),
              ),
              // TransparentImageCard(
              //   width: 200,
              //   imageProvider: AssetImage('assets/mockup.png'),
              //   tags: [
              //     _tag('Product', () {}),
              //   ],
              //   title: _title(color: Colors.white),
              //   description: _content(color: Colors.white),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FillImageCard(
                          color: Color(0xFFDEE5CB),
                          width: 200,
                          heightImage: 140,
                          imageProvider:
                              AssetImage('assets/image/artikel a.jpg'),
                          tags: [
                            Text(
                              'Pupuk',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ],
                          title: Text(
                            'Rekomendasi pupuk untuk pohon mangga',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FillImageCard(
                          color: Color(0xFFDEE5CB),
                          width: 200,
                          heightImage: 140,
                          imageProvider:
                              AssetImage('assets/image/artikel a.jpg'),
                          tags: [
                            Text(
                              'Pupuk',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ],
                          title: Text(
                            'Rekomendasi pupuk untuk pohon mangga',
                            style: TextStyle(color: Colors.black, fontSize: 14),
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
    );
  }
}
