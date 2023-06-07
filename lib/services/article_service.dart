import 'package:agrotalk/models/count.dart';
import 'package:agrotalk/models/article.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

//create Article

Future createArticle(String pertanyaan) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');

  try {
    var url = "http://172.34.3.180:8000/api/Article";
    var body = {"pertanyaan": pertanyaan};
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
      return pertanyaan;
    }
  } catch (e) {
    print(e.toString());
  }
}

//get article

Future getArticles() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://172.34.3.180:8000/api/article";
    var token = await getToken();
    print(token);
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    print(hasil.body);
    final data = articleFromJson(hasil.body);
    return (data);
  } catch (e) {
    print(e.toString());
  }
}

Future getArticleCount() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://172.34.3.180:8000/api/countArticle";
    var token = await getToken();
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    final data = countFromJson(hasil.body);
    return data;
  } catch (e) {
    print(e.toString());
  }
}

// Future getArticles() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   final String? action = prefs.getString('id');
//   try {
//     var url = "http://172.34.3.180:8000/api/Articleshow";
//     var token = await getToken();
//     print(token);
//     var hasil = await http.get(Uri.parse(url), headers: {
//       "Accept": "Application/Json",
//       "Authorization": 'Bearer $token'
//     });
//     print(hasil.body);
//     return (hasil.body);
//   } catch (e) {
//     print(e.toString());
//   }
// }
