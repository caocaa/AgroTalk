import 'package:agrotalk/models/count.dart';
import 'package:agrotalk/models/groker.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

//create groker

Future createGroker(String pertanyaan) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');

  try {
    var url = "http://192.168.1.193:8000/api/groker";
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

//get groker

Future getGrokers() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://192.168.1.193:8000/api/grokershow";
    var token = await getToken();
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    print(grokerFromJson(hasil.body));
    final data = grokerFromJson(hasil.body);
    return data;
  } catch (e) {
    print(e.toString());
  }
}

Future getGrokerCount() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://192.168.1.193:8000/api/countgroker";
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

//delete groker
Future deleteGroker(int id) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    var url = "http://192.168.1.193:8000/api/groker/$id";
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
