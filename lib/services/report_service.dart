import 'package:agrotalk/models/report.dart';
import 'package:agrotalk/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

//get report
Future getReport() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  print("hai");
  try {
    var url = "http://172.34.4.87:8000/api/report";
    var token = await getToken();
    print(token);
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    print(reportFromJson(hasil.body));
    final data = reportFromJson(hasil.body);
    return data;
  } catch (e) {
    print(e.toString());
  }
}
