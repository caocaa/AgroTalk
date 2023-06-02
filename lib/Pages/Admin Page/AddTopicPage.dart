import 'package:agrotalk/Pages/Admin%20Page/HomePage.dart';
import 'package:agrotalk/Pages/Admin%20Page/LandingPage.dart';
import 'package:agrotalk/services/topic_service.dart';
import 'package:flutter/material.dart';
import 'package:agrotalk/models/topic.dart';
import 'TopicsModel.dart';

class AddTopicPage extends StatefulWidget {
  const AddTopicPage({super.key});

  @override
  State<AddTopicPage> createState() => _AddTopicPageState();
}

class _AddTopicPageState extends State<AddTopicPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController nama_topik = TextEditingController();
  bool loading = false;

  void addTopic() {
    setState(() {
      loading = true;
    });
    createTopic(nama_topik.text).then((value) {
      setState(() {
        if (value != "Null") {
          print("Topik telah ditambahkan");
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LandingPage()),
              (route) => false);
        } else {
          print("Tambahkan topik baru");
        }
      });
    });
  }

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
              color: Color(0xFF4F7D43),
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LandingPage(),
                ),
              );
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
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
                child: Align(
                  alignment: FractionalOffset.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Form(
                                  key: formkey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        validator: (val) => val!.length < 3
                                            ? 'Required at least 3 chars'
                                            : null,
                                        controller: nama_topik,
                                        decoration: InputDecoration(
                                            hintText: "Tambahkan topik baru"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  MaterialButton(
                                    height: 30,
                                    minWidth: 50,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    onPressed: () {
                                      if (formkey.currentState!.validate()) {
                                        setState(() {
                                          loading = true;
                                          addTopic();
                                        });
                                      }
                                    },
                                    color: const Color(0xFF4F7D43),
                                    textColor: Colors.white,
                                    child: const Text(
                                      'Tambah',
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
