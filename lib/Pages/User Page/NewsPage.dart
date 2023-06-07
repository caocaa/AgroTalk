import 'package:agrotalk/models/article.dart';
import 'package:agrotalk/services/article_service.dart';
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
  Article? article;

  void initState() {
    super.initState();
    getArticless();
  }

  void getArticless() {
    getArticles().then((value) {
      print(value);
      setState(() {
        article = value;
      });
    });
  }

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
                      "Artikel Terbaru",
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
              (article == null)
                  ? Container(
                      child: Center(child: CircularProgressIndicator()),
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: article!.data.length,
                            itemBuilder: (context, index) {
                              print(article?.data.length);
                              var articledata = article!.data[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NewsDetailPage(),
                                          ),
                                        );
                                      },
                                      child: TransparentImageCard(
                                        width: 250,
                                        height: 200,
                                        imageProvider: NetworkImage(
                                            'http://172.34.3.180:8000/gambar/${articledata.gambar}'),
                                        // tags: [
                                        //   Text(
                                        //     'Pupuk',
                                        //     style: TextStyle(
                                        //         color: Colors.white,
                                        //         fontSize: 10),
                                        //   ),
                                        // ],
                                        title: Text(
                                          articledata!.judul,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: InkWell(
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => const NewsDetailPage(),
              //             ),
              //           );
              //         },
              //         child: TransparentImageCard(
              //           width: 200,
              //           imageProvider:
              //               AssetImage('assets/image/artikel c.jpg'),
              //           tags: [
              //             Text(
              //               'Pupuk',
              //               style:
              //                   TextStyle(color: Colors.white, fontSize: 10),
              //             ),
              //           ],
              //           title: Text(
              //             'Rekomendasi pupuk untuk pohon mangga',
              //             style: TextStyle(color: Colors.white, fontSize: 14),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
