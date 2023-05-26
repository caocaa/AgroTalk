import 'package:agrotalk/Pages/Admin%20Page/AddTopicPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
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
                          "Total Artikel",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lato"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "3.358",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontFamily: "Lato",
                              ),
                            )
                          ],
                        ),
                        height: 75.0,
                        width: 200.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFBA9470),
                        ),
                      ),
                    ],
                  ),
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
                        padding: const EdgeInsets.all(10.0),
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
                                        "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Budiman",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontStyle: FontStyle.italic),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                  Row(
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
                                              ..onTap = () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AddTopicPage(),
                                                  ),
                                                );
                                              }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 0, 15.0, 6.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_circle_outline,
                                        color: Color(0xFF4F7D43),
                                        size: 25,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Color.fromARGB(255, 147, 13, 13),
                                        size: 25,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Container(
                      width: double.infinity,
                      alignment: AlignmentDirectional.centerStart,
                      decoration: const BoxDecoration(color: Color(0xFFA9B489)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
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
                                        "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Budiman",
                                        style: const TextStyle(
                                            fontSize: 10,
                                            fontStyle: FontStyle.italic),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                  Row(
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
                                              ..onTap = () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AddTopicPage(),
                                                  ),
                                                );
                                              }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 0, 15.0, 6.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_circle_outline,
                                        color: Color(0xFF4F7D43),
                                        size: 25,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Color.fromARGB(255, 147, 13, 13),
                                        size: 25,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Container(
                      width: double.infinity,
                      alignment: AlignmentDirectional.centerStart,
                      decoration: const BoxDecoration(color: Color(0xFFA9B489)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
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
                                        "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Budiman",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontStyle: FontStyle.italic),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                  Row(
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
                                              ..onTap = () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AddTopicPage(),
                                                  ),
                                                );
                                              }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 0, 15.0, 6.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_circle_outline,
                                        color: Color(0xFF4F7D43),
                                        size: 25,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Color.fromARGB(255, 147, 13, 13),
                                        size: 25,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Container(
                      width: double.infinity,
                      alignment: AlignmentDirectional.centerStart,
                      decoration: const BoxDecoration(color: Color(0xFFA9B489)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
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
                                        "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Budiman",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontStyle: FontStyle.italic),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                  Row(
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
                                              ..onTap = () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AddTopicPage(),
                                                  ),
                                                );
                                              }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 0, 15.0, 6.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_circle_outline,
                                        color: Color(0xFF4F7D43),
                                        size: 25,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Color.fromARGB(255, 147, 13, 13),
                                        size: 25,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Container(
                      width: double.infinity,
                      alignment: AlignmentDirectional.centerStart,
                      decoration: const BoxDecoration(color: Color(0xFFA9B489)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
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
                                        "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Budiman",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontStyle: FontStyle.italic),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                  Row(
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
                                              ..onTap = () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AddTopicPage(),
                                                  ),
                                                );
                                              }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 0, 15.0, 6.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_circle_outline,
                                        color: Color(0xFF4F7D43),
                                        size: 25,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Color.fromARGB(255, 147, 13, 13),
                                        size: 25,
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
