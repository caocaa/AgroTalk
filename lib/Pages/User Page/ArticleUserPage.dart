import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'AddArticlePage.dart';

class ArticleUserPage extends StatefulWidget {
  const ArticleUserPage({super.key});

  @override
  State<ArticleUserPage> createState() => _ArticleUserPageState();
}

class _ArticleUserPageState extends State<ArticleUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Permintaan Unggah Artikel",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lato"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Container(
                      width: double.infinity,
                      alignment: AlignmentDirectional.centerStart,
                      decoration: const BoxDecoration(color: Color(0xFFA9B489)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Meningkatkan Produktivitas Tanaman dengan Teknologi Pertanian Terbaru",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "LatoBold",
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                              text: 'Cek Artikel Lengkap',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 6, 95, 167),
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {}),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        splashRadius: 0.0001,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                            minWidth: 15, maxWidth: 15),
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.eye,
                                          color:
                                              Color.fromARGB(255, 120, 62, 25),
                                          size: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5),
                                        child: Text(
                                          "200",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        splashRadius: 0.0001,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                            minWidth: 15, maxWidth: 15),
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.leaf,
                                          color:
                                              Color.fromARGB(255, 79, 125, 67),
                                          size: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          "150",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 11,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Container(
                      width: double.infinity,
                      alignment: AlignmentDirectional.centerStart,
                      decoration: const BoxDecoration(color: Color(0xFFA9B489)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Menjaga Kualitas Air melalui Pengelolaan Pertanian yang Berkelanjutan",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "LatoBold",
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                              text: 'Cek Artikel Lengkap',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 6, 95, 167),
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {}),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        splashRadius: 0.0001,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                            minWidth: 15, maxWidth: 15),
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.eye,
                                          color:
                                              Color.fromARGB(255, 120, 62, 25),
                                          size: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5),
                                        child: Text(
                                          "350",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        splashRadius: 0.0001,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                            minWidth: 15, maxWidth: 15),
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.leaf,
                                          color:
                                              Color.fromARGB(255, 79, 125, 67),
                                          size: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          "200",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 11,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Container(
                      width: double.infinity,
                      alignment: AlignmentDirectional.centerStart,
                      decoration: const BoxDecoration(color: Color(0xFFA9B489)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Ini Cara Membuat Pupuk Organik Menggunakan Kulit Bawang!",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "LatoBold",
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                              text: 'Cek Artikel Lengkap',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 6, 95, 167),
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {}),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        splashRadius: 0.0001,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                            minWidth: 15, maxWidth: 15),
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.eye,
                                          color:
                                              Color.fromARGB(255, 120, 62, 25),
                                          size: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5),
                                        child: Text(
                                          "378",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        splashRadius: 0.0001,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                            minWidth: 15, maxWidth: 15),
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.leaf,
                                          color:
                                              Color.fromARGB(255, 79, 125, 67),
                                          size: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          "244",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 11,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 79, 125, 67),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddArticlePage()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
