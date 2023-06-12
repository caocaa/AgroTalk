import 'package:agrotalk/models/report.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

//get report
Future getReport() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://192.168.1.193:8000/api/report";
    var token = await getToken();
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    final data = reportFromJson(hasil.body);
    return data;
  } catch (e) {
    print(e.toString());
  }
}

//delete report
Future deleteReport(int id) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    var url = "http://192.168.1.193:8000/api/report/$id";
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
