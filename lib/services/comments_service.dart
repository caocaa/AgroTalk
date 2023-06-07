import 'dart:convert';

import 'package:agrotalk/services/comments_service.dart';
import 'package:agrotalk/services/groker_service.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:agrotalk/models/comment.dart';
import 'package:http/http.dart' as http;

String? comment;

//create comment
Future createComment(String comment) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final int? action = prefs.getInt('id');

  try {
    var url = "http://192.168.1.7:8000/api/groker/1/comments";
    var body = {"comment": comment};
    var token = prefs.getString('token');
    // return print(body);
    var hasil = await http.post(Uri.parse(url), body: body, headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    // print(hasil);
    print(hasil.statusCode.toString());

    if (hasil.statusCode != 200) {
      print("Error tambah komentar");
      return hasil.statusCode.toString();
    }

    if (hasil.statusCode == 200) {
      print("Komentar dibuat");
      print(hasil.body);
      comment = commentsModelFromJson(hasil.body).comments as String;
    

   return comment;
    }
  } catch (e) {
    print(e.toString());
  }
}



//get comment

Future getComments(int id_groker) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://172.34.4.135:8000/api/groker/$id_groker/comments";
    var token = await getToken();
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    print(hasil.body);
    final data = commentsModelFromJson(hasil.body);
    return data;
  } catch (e) {
    print(e.toString());
  }
}