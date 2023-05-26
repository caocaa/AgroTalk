import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({super.key});

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
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
              child: new Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Topik Populer Minggu Ini",
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
                          children: [
                            Text(
                              "Pupuk Organik",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontFamily: "Lato",
                              ),
                            )
                          ],
                        ),
                        height: 75.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: const Color(0xFFBA9470),
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
                          "Artikel Populer Minggu Ini",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lato"),
                        ),
                      ],
                    ),
                  ),
                  // isi artikel popular mingguan
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Taman Bermain Di Tengah Lahan Kerap Membuat Petani Kesusahan Dalam Bekerja.",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Asep Jawara",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontStyle: FontStyle.italic),
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.remove_red_eye_outlined),
                                        color: Colors.brown,
                                      ),
                                      Text(
                                        "346k",
                                        selectionColor: Colors.black,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.eco_outlined,
                                            color: const Color(0xFF4F7D43),
                                          )),
                                      Text(
                                        "136k",
                                        selectionColor: Colors.black,
                                      ),
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
                  // isi artikel popular mingguan
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Alat Sederhana Ini Membantu Kamu Untuk Cocok Tanam. Bisa Dibuat Sendiri, Loh! ",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Karina Natasha",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontStyle: FontStyle.italic),
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.remove_red_eye_outlined),
                                        color: Colors.brown,
                                      ),
                                      Text(
                                        "340k",
                                        selectionColor: Colors.black,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.eco_outlined,
                                            color: const Color(0xFF4F7D43),
                                          )),
                                      Text(
                                        "137k",
                                        selectionColor: Colors.black,
                                      ),
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
                  // isi artikel popular mingguan
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Cara Mengolah Kulit Pisang menjadi Pupuk Organik Yang Sehat Untuk Tanaman",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Maulana Hidayah",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontStyle: FontStyle.italic),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.remove_red_eye_outlined),
                                        color: Colors.brown,
                                      ),
                                      Text(
                                        "339k",
                                        selectionColor: Colors.black,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.eco_outlined,
                                            color: const Color(0xFF4F7D43),
                                          )),
                                      Text(
                                        "128k",
                                        selectionColor: Colors.black,
                                      ),
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
                  // isi artikel popular mingguan
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    children: [
                                      Text(
                                        "Menghilangkan Kutu Daun dan Hama Lainnya Menggunakan Cabe?!",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Dina OhDina",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontStyle: FontStyle.italic),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.remove_red_eye_outlined),
                                        color: Colors.brown,
                                      ),
                                      Text(
                                        "336k",
                                        selectionColor: Colors.black,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.eco_outlined,
                                            color: const Color(0xFF4F7D43),
                                          )),
                                      Text(
                                        "120k",
                                        selectionColor: Colors.black,
                                      ),
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
    );
  }
}
