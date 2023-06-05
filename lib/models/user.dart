import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  bool success;
  String message;
  Data data;

  RegisterModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  bool success;
  String message;
  Data data;

  LoginModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

DetailUserModel detailUserModelFromJson(String str) =>
    DetailUserModel.fromJson(json.decode(str));

String detailUserModelToJson(DetailUserModel data) =>
    json.encode(data.toJson());

class DetailUserModel {
  bool success;
  String message;
  Data data;

  DetailUserModel({
    required this.success,
    required this.message,
    required this.data,
  });
  factory DetailUserModel.fromJson(Map<String, dynamic> json) =>
      DetailUserModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  String token;
  String name;
  String email;
  String role;
  //String image;

  Data({
    required this.token,
    required this.name,
    required this.email,
    required this.role,
    //required this.image,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        //image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "name": name,
        "email": email,
        "role": role,
      };
}


User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    int id;
    String name;
    String email;
    dynamic image;
    dynamic emailVerifiedAt;
    String role;
    DateTime createdAt;
    DateTime updatedAt;

    User({
        required this.id,
        required this.name,
        required this.email,
        this.image,
        this.emailVerifiedAt,
        required this.role,
        required this.createdAt,
        required this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        image: json["image"],
        emailVerifiedAt: json["email_verified_at"],
        role: json["role"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "image": image,
        "email_verified_at": emailVerifiedAt,
        "role": role,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

