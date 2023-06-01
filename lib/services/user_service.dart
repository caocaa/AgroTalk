import 'dart:convert';
import 'dart:ui';
import 'package:agrotalk/models/api_response.dart';
import 'package:agrotalk/constant.dart';
import 'package:agrotalk/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// login
String? token;
String? role;
Future iniLogin(String email, String password) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('token');

  try {
    var url = "http://192.168.18.6:8000/api/login";
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
      // print(action);

      // token = loginModelFromJson(hasil.body).token;
      // role = loginModelFromJson(hasil.body).role.first;

      // print(action);

      return role;
      // return hasil.statusCode;
    }
  } catch (e) {
    print(e.toString());
    // log(e.toString());
  }
}

// Future<ApiResponse> login(String email, String password) async {
//   ApiResponse apiResponse = ApiResponse();
// print(loginURL);

// try {
//     final response = await http.post(Uri.parse(loginURL),
//         headers: {'Accept': 'application/json'},
//         body: {'email': email, 'password': password});
//     print(response.statusCode);
//     switch (response.statusCode) {
//       case 200:
//         // apiResponse.data = User.fromJson(jsonDecode(response.body));
//         final data = User.fromJson(jsonDecode(response.body));
//         print(data.token);
//         // return data;
//         break;
//       case 422:
//         final errors = jsonDecode(response.body)['errors'];
//         apiResponse.error = errors[errors.keys.elementAt(0)][0];
//         break;
//       case 403:
//         apiResponse.error = jsonDecode(response.body)['message'];
//         break;
//       case 500:
//         print('error 500');
//         break;
//       default:
//         apiResponse.error = somethingWentWrong;
//         break;
//     }
//   } catch (e) {
//     print('object');
//     apiResponse.error = serverError;
//   }

//   return apiResponse;
// }

// Register
// Future<ApiResponse> register(String name, String email, String password) async {
//   ApiResponse apiResponse = ApiResponse();
//   try {
//     final response = await http.post(Uri.parse(registerURL), headers: {
//       'Accept': 'application/json'
//     }, body: {
//       'name': name,
//       'email': email,
//       'password': password,
//       'confirm_password': password
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

// User
// Future<ApiResponse> getUserDetail() async {
//   ApiResponse apiResponse = ApiResponse();
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