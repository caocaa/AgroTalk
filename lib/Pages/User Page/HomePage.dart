import 'package:agrotalk/Pages/User%20Page/LandingPageUser.dart';
import 'package:agrotalk/Pages/User%20Page/TopicScroll.dart';
import 'package:agrotalk/services/groker_service.dart';
import 'package:flutter/material.dart';
import '../../models/groker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController pertanyaan = TextEditingController();
  bool loading = false;

  Groker? groker;

  void initState() {
    super.initState();
    getGrokerss();
  }

  void addGroker() {
    setState(() {
      loading = true;
    });
    createGroker(pertanyaan.text).then((value) {
      setState(() {
        if (value != "Null") {
          print("Groker telah ditambahkan");
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LandingPageUser()),
              (route) => false);
        } else {
          print("Tambahkan groker baru");
        }
      });
    });
  }

  void getGrokerss() {
    getGrokers().then((value) {
      setState(() {
        groker = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(54, 238, 238, 220),
                Color.fromARGB(174, 222, 229, 210),
              ]),
        ),
        child: (groker == null)
            ? Container(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Container(
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
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 0, 15.0, 6.0),
                                child: Form(
                                  key: formkey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        validator: (val) => val!.length < 10
                                            ? 'Required at least 10 chars'
                                            : null,
                                        controller: pertanyaan,
                                        decoration: InputDecoration(
                                            hintText:
                                                "apa yang ingin anda tanyakan?"),
                                      ),
                                    ],
                                  ),
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
                                onPressed: () {
                                  if (formkey.currentState!.validate()) {
                                    setState(() {
                                      loading = true;
                                      addGroker();
                                    });
                                  }
                                },
                                icon: const Icon(
                                  Icons.send,
                                  color: Color(0xFF4F7D43),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: const TopicScroll(),
                      ),
                    ],
                  ),
                  Expanded(
                      child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: groker?.users.length,
                    itemBuilder: (context, index) {
                      print(groker?.users.length);
                      var grokerdata = groker!.users[index];
                      return Column(
                        children: [
                          // ini lu misal mau bikin container, bikinnya 1 aja trus ntar tinggal panggil2in
                          Container(
                              child: Column(
                            children: [
                              Container(
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
                                          backgroundImage: AssetImage(
                                              'assets/image/user2.jpg'),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nanang Sumanto',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              grokerdata!.createdAt.toString(),
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      grokerdata!.pertanyaan,
                                      style: TextStyle(
                                        fontFamily: "LatoBold",
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child:
                                          Image.asset('assets/image/post1.jpg'),
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
                              // Text(grokerdata!.pertanyaan),
                              // Text(grokerdata!.id.toString()),
                              // Text(grokerdata!.idUser.toString()),
                              // Text(grokerdata!.createdAt.toString()),
                            ],
                          ))
                        ],
                      );
                    },
                  )),
                  // Column(
                  //   children: [
                  // FutureBuilder<dynamic>(
                  //   future: getGrokers(),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.hasData) {
                  //       print(snapshot.hasData);
                  //       print(snapshot.data);
                  //       print(snapshot.data['users'].length);
                  //       return Column(
                  //         children: List<Widget>.generate(
                  //             snapshot.data['users'].length, (int index) {
                  //           growable:
                  //           true;
                  //           return Container(
                  //             padding: EdgeInsets.all(10),
                  //             decoration: BoxDecoration(
                  //               color: Colors.white,
                  //             ),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Row(
                  //                   children: [
                  //                     CircleAvatar(
                  //                       radius: 20,
                  //                       backgroundImage: AssetImage(
                  //                           'assets/image/user2.jpg'),
                  //                     ),
                  //                     SizedBox(width: 10),
                  //                     Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Text(
                  //                           'Nanang Sumanto',
                  //                           style: TextStyle(
                  //                             fontWeight: FontWeight.bold,
                  //                           ),
                  //                         ),
                  //                         Text(
                  //                           '2 hours ago',
                  //                           style: TextStyle(
                  //                             color: Colors.grey,
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(height: 10),
                  //                 Text(
                  //                   snapshot.data['users'],
                  //                   style: TextStyle(
                  //                     fontFamily: "LatoBold",
                  //                     fontSize: 12,
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 10),
                  //                 Align(
                  //                   alignment: Alignment.bottomCenter,
                  //                   child:
                  //                       Image.asset('assets/image/post1.jpg'),
                  //                 ),
                  //                 SizedBox(height: 10),
                  //                 Row(
                  //                   mainAxisAlignment: MainAxisAlignment.end,
                  //                   children: [
                  //                     Icon(
                  //                       Icons.thumb_up,
                  //                       size: 15,
                  //                     ),
                  //                     SizedBox(width: 10),
                  //                     Icon(
                  //                       Icons.comment,
                  //                       size: 15,
                  //                     ),
                  //                     SizedBox(width: 10),
                  //                     Icon(
                  //                       Icons.share,
                  //                       size: 15,
                  //                     ),
                  //                     SizedBox(width: 15),
                  //                   ],
                  //                 ),
                  //               ],
                  //             ),
                  //           );
                  //         }),
                  //       );
                  //     } else {
                  //       return Text('Tunggu');
                  //     }
                  //   },
                  // ),
                  //   ],
                  // ),
                  // SliverToBoxAdapter(
                  //   child: Container(
                  //     margin: EdgeInsets.only(top: 10),
                  //     padding: EdgeInsets.all(10),
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //     ),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Row(
                  //           children: [
                  //             CircleAvatar(
                  //               radius: 20,
                  //               backgroundImage: AssetImage('assets/image/user3.jpg'),
                  //             ),
                  //             SizedBox(width: 10),
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                   'Ibnu Maulana',
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   ),
                  //                 ),
                  //                 Text(
                  //                   '5 hours ago',
                  //                   style: TextStyle(
                  //                     fontSize: 10,
                  //                     color: Colors.grey,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //         SizedBox(height: 10),
                  //         Text(
                  //           'Bagaimana agar tanaman bisa tumbuh subur?',
                  //           style: TextStyle(
                  //             fontFamily: "LatoBold",
                  //             fontSize: 12,
                  //           ),
                  //         ),
                  //         SizedBox(height: 10),
                  //         Text(
                  //           'Saya sering pergi ke hutan untuk sekedar berkelana atau mendaki. Selalu terpesona dengan pohon pohon besar yang subur seperti ini. Apalagi kalau duduk di bawahnya terasa adem. Perlu pupuk gak yah untuk bisa membuat pohon tumbuh subur sebesar ini?',
                  //           style: TextStyle(
                  //             fontFamily: "Lato",
                  //             fontSize: 12,
                  //           ),
                  //         ),
                  //         SizedBox(height: 10),
                  //         Align(
                  //           alignment: Alignment.bottomCenter,
                  //           child: Image.asset(
                  //             'assets/image/post2.jpg',
                  //             height: 100,
                  //           ),
                  //         ),
                  //         SizedBox(height: 10),
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.end,
                  //           children: [
                  //             Icon(
                  //               Icons.thumb_up,
                  //               size: 15,
                  //             ),
                  //             SizedBox(width: 10),
                  //             Icon(
                  //               Icons.comment,
                  //               size: 15,
                  //             ),
                  //             SizedBox(width: 10),
                  //             Icon(
                  //               Icons.share,
                  //               size: 15,
                  //             ),
                  //             SizedBox(width: 15),
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
      ),
    );
  }
}
