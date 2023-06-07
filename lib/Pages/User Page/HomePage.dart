import 'package:agrotalk/Pages/User%20Page/CommentPage.dart';
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
  Color _colorlike = Colors.grey;
  Color _colorcomment = Colors.grey;
  Color _colorreport = Colors.grey;

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
          setState(() {
            
          });
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
      body: (groker == null)
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : Container(
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
              child: Column(
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
                  (groker == null)
                      ? Expanded(
                          child: Center(
                          child: CircularProgressIndicator(),
                        ))
                      : Expanded(
                          child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: groker?.groker.length,
                          itemBuilder: (context, index) {
                            print(groker?.groker.length);
                            var grokerdata = groker!.groker[index];
                            return Column(
                              children: [
                                Container(
                                    child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                    grokerdata!.user.name
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    grokerdata!.createdAt
                                                        .toString()
                                                        .substring(0, 19),
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
                                          (grokerdata!.gambar != null)
                                              ? Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Image.asset(
                                                          'assets/image/post1.jpg'),
                                                    ),
                                                  ),
                                                )
                                              : Center(
                                                  child: SizedBox(height: 10),
                                                ),
                                          SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                  icon: Icon(Icons.thumb_up),
                                                  iconSize: 15,
                                                  color: _colorlike,
                                                  onPressed: () {
                                                    setState(() {
                                                      if (_colorlike ==
                                                          Colors.grey) {
                                                        _colorlike =
                                                            Color(0xFF4F7D43);
                                                      } else {
                                                        _colorlike =
                                                            Colors.grey;
                                                      }
                                                    });
                                                  }),
                                              SizedBox(width: 10),
                                              IconButton(
                                                  icon: Icon(Icons.comment),
                                                  iconSize: 15,
                                                  color: _colorcomment,
                                                  onPressed: () {
                                                    setState(() {
                                                      if (_colorcomment ==
                                                          Colors.grey) {
                                                        _colorcomment =
                                                            Color(0xFF4F7D43);
                                                      } else {
                                                        _colorcomment =
                                                            Colors.grey;
                                                      }
                                                    });
                                                  }),
                                              SizedBox(width: 10),
                                              IconButton(
                                                  icon: Icon(Icons
                                                      .report_gmailerrorred_outlined),
                                                  iconSize: 15,
                                                  color: _colorreport,
                                                  onPressed: () {
                                                    setState(() {
                                                      if (_colorreport ==
                                                          Colors.grey) {
                                                        _colorreport =
                                                            Color(0xFF4F7D43);
                                                      } else {
                                                        _colorreport =
                                                            Colors.grey;
                                                      }
                                                    });
                                                  }),
                                              SizedBox(width: 15),
                                            ],
                                          ),
                                        ],
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
                                        IconButton(
                                          icon: Icon(Icons.comment,),
                                          iconSize: 15, onPressed: () { 
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => CommentPage(grokerid: grokerdata!.id.toInt()),
                                                ),
                                              );
                                           },
                                        
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
                                ))
                              ],
                            );
                          },
                        )),
                ],
              ),
            ),
    );
  }
}
