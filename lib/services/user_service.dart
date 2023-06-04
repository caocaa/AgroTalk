import 'dart:convert';
import 'dart:ui';
import 'package:agrotalk/models/api_response.dart';
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

// User
// Future<ApiResponse> getUserDetail() async {
// ApiResponse apiResponse = ApiResponse();
//   try {
//     String token = await getToken();
//     final response = await http.get(Uri.parse(userURL), headers: {
//       'Accept': 'application/json',
//       'Authorization': 'Bearer $token'
//     });

//     switch (response.statusCode) {
//       case 200:
//         apiResponse.data = User.fromJson(jsonDecode(response.body));
//         break;
//       case 422:
//         final errors = jsonDecode(response.body)['errors'];
//         apiResponse.error = errors[errors.keys.elementAt(0)][0];
//         break;
//       case 403:
//         apiResponse.error = jsonDecode(response.body)['message'];
//         break;
//       default:
//         apiResponse.error = somethingWentWrong;
//         break;
//     }
//   } catch (e) {
//     apiResponse.error = serverError;
//   }
//   return apiResponse;
// }

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
