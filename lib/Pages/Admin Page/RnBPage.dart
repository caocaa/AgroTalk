import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'AddTopicPage.dart';

class RnBPage extends StatefulWidget {
  const RnBPage({super.key});

  @override
  State<RnBPage> createState() => _RnBPageState();
}

class _RnBPageState extends State<RnBPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                          "Permintaan Laporan Groker",
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
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Menampilkan Topik Sensitif",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                176, 238, 238, 238)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Munaroh",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dilaporkan oleh Budiman",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
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
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Menampilkan Topik Sensitif",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                176, 238, 238, 238)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Munaroh",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dilaporkan oleh Budiman",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
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
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Menampilkan Topik Sensitif",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                176, 238, 238, 238)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Munaroh",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dilaporkan oleh Budiman",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
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
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Menampilkan Topik Sensitif",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                176, 238, 238, 238)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Munaroh",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dilaporkan oleh Budiman",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
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
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Menampilkan Topik Sensitif",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                176, 238, 238, 238)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Munaroh",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dilaporkan oleh Budiman",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
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
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Menampilkan Topik Sensitif",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                176, 238, 238, 238)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Munaroh",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dilaporkan oleh Budiman",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
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
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Menampilkan Topik Sensitif",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                176, 238, 238, 238)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Jangan Disingkirkan! Ini 5 Manfaat Cacing Tanah Untuk Kebunmu.",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Munaroh",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dilaporkan oleh Budiman",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
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
            )
          ],
        ),
      ),
    );
  }
}
