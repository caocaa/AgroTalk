import 'package:agrotalk/models/report.dart';
import 'package:agrotalk/services/groker_service.dart';
import 'package:agrotalk/services/report_service.dart';
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
  Report? report;

  void initState() {
    super.initState();
    getReports();
  }

  void getReports() {
    getReport().then((value) {
      setState(() {
        report = value;
        print(report);
      });
    });
  }

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
        child: Column(
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
            (report == null)
                ? Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: report?.report.length,
                        itemBuilder: (context, index) {
                          var reportdata = report!.report[index];
                          print(report?.report.length);
                          print(reportdata);
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: double.infinity,
                              alignment: AlignmentDirectional.centerStart,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFA9B489),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Wrap(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Text(
                                                  reportdata!.deskripsi,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(5.0),
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      238, 238, 238, 0.69),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      reportdata!
                                                          .groker.pertanyaan,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    (reportdata!.groker
                                                                .gambar !=
                                                            null)
                                                        ? Center(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(5.0),
                                                              child: Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Image.asset(
                                                                    'assets/image/post1.jpg'),
                                                              ),
                                                            ),
                                                          )
                                                        : Center(
                                                            child: SizedBox(
                                                                height: 10),
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
                                                  "Dilaporkan oleh " +
                                                      reportdata!.user.name,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontStyle:
                                                          FontStyle.italic),
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
                                              onPressed: () {
                                                var id = reportdata!.id;
                                                var idgro =
                                                    reportdata.groker.id;
                                                deleteGroker(idgro);
                                                deleteReport(id);
                                                setState(() {
                                                  getReports();
                                                });
                                              },
                                              icon: Icon(
                                                Icons.check_circle_outline,
                                                color: Color(0xFF4F7D43),
                                                size: 25,
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                var id = reportdata!.id;
                                                deleteReport(id);
                                                setState(() {
                                                  getReports();
                                                });
                                              },
                                              icon: Icon(
                                                Icons.cancel_outlined,
                                                color: Color.fromARGB(
                                                    255, 147, 13, 13),
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
                          );
                        }),
                  )
          ],
        ),
      ),
    );
  }
}
