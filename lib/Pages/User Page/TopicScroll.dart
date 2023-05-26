import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopicScroll extends StatefulWidget {
  const TopicScroll({super.key});

  @override
  State<TopicScroll> createState() => _TopicScrollState();
}

class _TopicScrollState extends State<TopicScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFA9B489),
                  ),
                  child: const Text(
                    'Pupuk',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFA9B489),
                  ),
                  child: const Text(
                    'Pot Bunga',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFA9B489),
                  ),
                  child: const Text(
                    'Pestisida',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFA9B489),
                  ),
                  child: const Text(
                    'Kutu Daun',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFA9B489),
                  ),
                  child: const Text(
                    'Hidroponik',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFA9B489),
                  ),
                  child: const Text(
                    'Bibit',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFA9B489),
                  ),
                  child: const Text(
                    'Cabai',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFA9B489),
                  ),
                  child: const Text(
                    'Hama',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
