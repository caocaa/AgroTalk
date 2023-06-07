import 'package:agrotalk/services/topic_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopicScroll extends StatefulWidget {
  const TopicScroll({super.key});

  @override
  State<TopicScroll> createState() => _TopicScrollState();
}

class _TopicScrollState extends State<TopicScroll> {
  void initState() {
    super.initState();
    getTopics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            child: FutureBuilder<dynamic>(
              future: getTopics(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.hasData);
                  return Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List<Widget>.generate(
                          snapshot.data['data'].length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Chip(
                            backgroundColor: Color(0xFFA9B489),
                            label: Text(
                              snapshot.data['data'][index]['nama_topik'],
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                } else {
                  return Center(
                    child: Container(
                      width: 15,
                      height: 15,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.0,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
