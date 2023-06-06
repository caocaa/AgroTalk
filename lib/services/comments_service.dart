import 'package:shared_preferences/shared_preferences.dart';
import '../models/topic.dart';
import 'package:http/http.dart' as http;

String? id;
String? id_user;
String? id_groker;
String? comment;

//create comment
Future createTopic(String comment) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');

  try {
    var url = "http://192.168.1.193:8000/api/groker/1/comments";
    var body = {"comment": comment};
    var token = prefs.getString('token')?.split("|")[1];
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
      id = topicModelFromJson(hasil.body).data.id;
      comment = topicModelFromJson(hasil.body).data.nama_topik;

      return comment;
    }
  } catch (e) {
    print(e.toString());
  }
}
