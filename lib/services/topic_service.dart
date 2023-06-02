import 'dart:convert';
import 'dart:ui';
import 'package:agrotalk/models/api_response.dart';
import 'package:agrotalk/models/topic.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

String? id;
String? nama_topik;

//create topic
Future createTopic(String nama_topik) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');

  try {
    var url = "http://192.168.100.60:8000/api/topics";
    var body = {"nama_topik": nama_topik};
    var token = prefs.getString('token')?.split("|")[1];
    // return print(body);
    print(token);
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
  try {
    var url = "http://192.168.100.60:8000/api/topics";
    var body = {"nama_topik": nama_topik};
    var token = prefs.getString('token')?.split("|")[1];
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    print(json.decode(hasil.body));

    return json.decode(hasil.body);
  } catch (e) {
    print(e.toString());
  }
}