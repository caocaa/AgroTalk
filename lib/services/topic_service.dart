import 'dart:convert';
import 'dart:ui';
import 'package:agrotalk/Pages/Admin%20Page/LandingPage.dart';
import 'package:agrotalk/models/api_response.dart';
import 'package:agrotalk/models/topic.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:agrotalk/services/user_service.dart';

String? id;
String? nama_topik;

//create topic
Future createTopic(String nama_topik) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');

  try {
    var url = "http://172.34.4.135:8000/api/topics";
    var body = {"nama_topik": nama_topik};
    var token = prefs.getString('token');
    // return print(body);
    var hasil = await http.post(Uri.parse(url), body: body, headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    // print(hasil);
    print(hasil.statusCode.toString());

    if (hasil.statusCode != 200) {
      print("error tambah topik");
      return hasil.statusCode.toString();
    }

    if (hasil.statusCode == 200) {
      print("Sukses tambah topik");
      print(hasil.body);
      id = topicModelFromJson(hasil.body).data.id;
      nama_topik = topicModelFromJson(hasil.body).data.nama_topik;
      return nama_topik;
    }
  } catch (e) {
    print(e.toString());
  }
}

//get topic

Future getTopics() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://172.34.4.135:8000/api/topics";
    var token = await getToken();
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    print(hasil.body);
    return json.decode(hasil.body);
  } catch (e) {
    print(e.toString());
  }
}

//delete topic

Future deleteTopics(int id) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    var url = "http://172.34.4.135:8000/api/topics/$id";
    print(url);
    var token = await getToken();
    var hasil = await http.delete(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    print(hasil.body);
  } catch (e) {
    print(e.toString());
  }
}
