import 'package:agrotalk/Pages/Admin%20Page/HomePage.dart';
import 'package:agrotalk/Pages/Admin%20Page/LandingPage.dart';
import 'package:flutter/material.dart';
import 'TopicsModel.dart';

class AddTopicPage extends StatefulWidget {
  const AddTopicPage({super.key});

  @override
  State<AddTopicPage> createState() => _AddTopicPageState();
}

class _AddTopicPageState extends State<AddTopicPage> {
  final List<TopicsModel> _topicsList = [];
  final TextEditingController _topicsText = TextEditingController();

  void deleteTopics(String id) {
    setState(() {
      _topicsList.removeWhere((element) => element.id == id);
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
                                child: TextField(
                                  controller: _topicsText,
                                  decoration: InputDecoration(
                                      hintText: "Tambahkan topik baru"),
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
                                      setState(() {
                                        _topicsList.add(TopicsModel(
                                            id: DateTime.now().toString(),
                                            name: _topicsText.text));
                                        _topicsText.text = '';
                                      });
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => const LandingPage(),
                                      //   ),
                                      // );
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
                            Wrap(
                              spacing: 4.0,
                              runSpacing: 4.0,
                              children: _topicsList
                                  .map((topics) => Chip(
                                        label: Text(
                                          topics.name,
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 10,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        backgroundColor: Color(0xFFA9B489),
                                        deleteIcon: Icon(
                                          Icons.cancel_outlined,
                                          color: const Color(0xFF4F7D43),
                                          size: 15,
                                        ),
                                        onDeleted: () {
                                          deleteTopics(topics.id);
                                        },
                                      ))
                                  .toList(),
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
