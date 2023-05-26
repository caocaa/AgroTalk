import 'package:agrotalk/Pages/User%20Page/TopicScroll.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get FlatButton => null;

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
              child: Container(
                padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
                color: const Color(0xFFDEE5CB),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/image/user1.jpg'),
                            radius: 20.0,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 0, 15.0, 6.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "apa yang ingin anda tanyakan?"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 50),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_photo_alternate,
                              color: Color(0xFF4F7D43),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.insert_emoticon,
                              color: Color(0xFF4F7D43),
                            )),
                        SizedBox(width: 130),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: Color(0xFF4F7D43),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: const TopicScroll(),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image/user2.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nanang Sumanto',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '2 hours ago',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Bagaimana agar tanaman bisa tumbuh subur?',
                      style: TextStyle(
                        fontFamily: "LatoBold",
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Jadi saya nanem pohon apel. Terus pohonnya udah 5 tahun ga tumbuh tumbuh buah. Padahal pohonnya udah tinggi, daunnya juga banyak. Itu harus diapain ya kira kira?',
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/image/post1.jpg'),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.thumb_up,
                          size: 15,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.comment,
                          size: 15,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.share,
                          size: 15,
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image/user3.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ibnu Maulana',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '5 hours ago',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Bagaimana agar tanaman bisa tumbuh subur?',
                      style: TextStyle(
                        fontFamily: "LatoBold",
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Saya sering pergi ke hutan untuk sekedar berkelana atau mendaki. Selalu terpesona dengan pohon pohon besar yang subur seperti ini. Apalagi kalau duduk di bawahnya terasa adem. Perlu pupuk gak yah untuk bisa membuat pohon tumbuh subur sebesar ini?',
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/image/post2.jpg',
                        height: 100,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.thumb_up,
                          size: 15,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.comment,
                          size: 15,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.share,
                          size: 15,
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
