import 'dart:convert';
import 'dart:ui';
import 'package:agrotalk/models/api_response.dart';
import 'package:agrotalk/models/count.dart';
import 'package:agrotalk/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

String? token;
String? role;
// Register
Future iniRegister(String name, String email, String password) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // final String? action = prefs.getString('token');
  try {
    var url = "http://192.168.186.188:8000/api/register";
    var body = {"name": name, "email": email, "password": password};

    var hasil = await http.post(Uri.parse(url), body: body);
    print(hasil.statusCode);
    var hasilJson = jsonDecode(hasil.body);
    print(hasilJson.toString());

    if (hasil.statusCode != 200) {
      print("error register");
      return hasil.statusCode;
    } else if (hasil.statusCode == 200) {
      print("register aman");
      var success = hasilJson['success'];
      print(success.toString());
      if (success == true) {
        print("Sukses register");
        //var statusCode = hasil.statusCode.toString();
        //token = registerModelFromJson(hasil.body).data.token;
        //print(statusCode);
        // await prefs.setString('token', '$token');
        return "success";
      } else {
        print(registerModelFromJson(hasil.body).message);
      }
    }
  } catch (e) {
    print(e.toString());
  }
}

// login
Future iniLogin(String email, String password) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('token');

  try {
    var url = "http://192.168.186.188:8000/api/login";
    var body = {"email": email, "password": password};
    // return print(body);
    var hasil = await http.post(Uri.parse(url), body: body);
    // print(hasil);
    print(hasil.statusCode.toString());

    if (hasil.statusCode != 200) {
      print("error login");
      return hasil.statusCode;
    }

    if (hasil.statusCode == 200) {
      print("Sukses Login");
      token = loginModelFromJson(hasil.body).data.token;
      role = loginModelFromJson(hasil.body).data.role;
      await prefs.setString('token', '$token');

      return role;
    }
  } catch (e) {
    print(e.toString());
  }
}

// User details

Future getUser() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://192.168.186.188:8000/api/user";
    var token = await getToken();
    var hasil = await http.get(Uri.parse(url), headers: {
      "Accept": "Application/Json",
      "Authorization": 'Bearer $token'
    });
    final data = userFromJson(hasil.body);
    return data;
  } catch (e) {
    print(e.toString());
  }
}

Future getUserCount() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('id');
  try {
    var url = "http://192.168.186.188:8000/api/countuser";
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

//get token
Future<String> getToken() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString('token') ?? '';
}

//get user id
Future<int> getUserId() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getInt('userId') ?? 0;
}

//logout
Future<bool> logout() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return await pref.remove('token');
}
