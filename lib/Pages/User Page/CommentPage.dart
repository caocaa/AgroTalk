import 'dart:html';
import 'package:agrotalk/services/comments_service.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../models/comment.dart';
import 'NotificationUserPage.dart';

class CommentPage extends StatefulWidget {
  final int grokerid;
  const CommentPage({required this.grokerid});

  @override
  State <CommentPage> createState() =>  _CommentPageState();
}

class  _CommentPageState extends State <CommentPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController comment = TextEditingController();
  bool loading = false;

  CommentsModel? comments;

void initState() {
  super.initState();
  getComment();
}

void addComment() {
    setState(() {
      loading = true;
    });
    createComment(comment.text).then((value) {
      setState(() {
        if (value != "Null") {
          print("Comment telah ditambahkan");
          setState(() {
    
          });
        } else {
          print("Tambahkan Comment baru");
        }
      });
    });
  }
void getComment() {
    getComments(widget.grokerid).then((value) {
      setState(() {
        comments = value;
        print(comments);
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
            color: const Color(0xFF4F7D43),
            size: 30,
          ), onPressed: () { Navigator.pop(context); 
          },
      ),
      actions: [
      IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationUserPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.notifications,
              color: Color(0xFF4F7D43),
              size: 30,
            ),
            padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
          ),
      ]
      ),
      body: 
      Container(
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
            (comment == null)
                ? Center(child: CircularProgressIndicator(),)
                : Expanded(child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: comments?.comments.length,
                    itemBuilder: (context, index) {
                      var datacomment = comments!.comments[index];
                      return Column(
                        children: [
                          Text(datacomment.comment),
                          Text(datacomment.user.name),//nama kasi komen
                          // Image(image: datacomment.user.image)
                        ],
                      );
                      },
                      ),
            ),
            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 0, 15.0, 6.0),
                                child: Form(
                                  key: formkey,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: TextFormField(
                                          validator: (val) => val!.length < 3
                                          ? 'Required at least 3 chars'
                                          : null,
                                          controller: comment,
                                          decoration: InputDecoration(
                                          hintText:
                                              "Tambahkan komentar"),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: IconButton(
                                        icon: Icon(Icons.send),
                          
                                        onPressed: (){
                                        setState(() {
                                          addComment();
                                           });
                                         setState(() {});
                                           },
                         ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
      
      
            // Expanded(
            //   child: RefreshIndicator(
            //     onRefresh: () {
            //       return  _getComments();
            //     },
            //   child: ListView.builder(
            //     itemCount: _commentsList.length, 
            //     itemBuilder: (BuildContext context, int index) {
            //       Comment comment = _commentsList[index];
            //       return Container(
            //         padding: EdgeInsets.all(10),
            //         width: MediaQuery.of(context).size.width,
            //         decoration: BoxDecoration(
            //           border: Border(
            //             bottom: BorderSide(color: Colors.black26, width: 0.5)
            //           )
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Row(
            //                   children: [
            //                     Container(
            //                       width: 30,
            //                       height: 30,
            //                       decoration: BoxDecoration(
            //                         image: comment.user!.image !=null ? DecorationImage(
            //                           image: NetworkImage('${comment.user!.image}'),
            //                           fit: BoxFit.cover
            //                           ) : null,
            //                           borderRadius: BorderRadius.circular(15),
            //                           color: Colors.blueGrey
            //                       ),
            //                     ),
            //                     SizedBox(width: 10,),
            //                     Text(
            //                       '$comment.user!.name)',
            //                       style: TextStyle(
            //                         fontWeight: FontWeight.w600,
            //                       fontSize: 16,
            //                       ),
            //                    ),
            //                 ],
            //                 ),
            //               ],
            //             )
            //           ],
            //         ),
            //       );
            //       },
            //     )
            //   )
            //     ),
            //     Container(
            //       width: MediaQuery.of(context).size.width,
            //       padding: EdgeInsets.all(10),
            //       decoration: BoxDecoration(
            //         border: Border(
            //           top: BorderSide(color: Colors.black26, width: 0.5
            //           )
            //         )
            //       ),
            //       child: Row(
            //         children: [
            //           Expanded(
            //             child: TextFormField(
            //               controller: _txtCommentController,
            //             ),
            //             ),
            //             IconButton(
            //              icon: Icon(Icons.send),
            //              onPressed: (){
            //               if(_txtCommentController.text.isNotEmpty){
            //                 setState(() {
            //                   _loading = true;
            //                 });
                            
            //               }
            //              },
            //              )
            //         ],
            //       ),
            //     )
          ],
        ),
      )
    );
  }
}