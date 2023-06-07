// To parse this JSON data, do
//
//     final report = reportFromJson(jsonString);

import 'dart:convert';

Report reportFromJson(String str) => Report.fromJson(json.decode(str));

String reportToJson(Report data) => json.encode(data.toJson());

class Report {
  List<ReportElement> report;

  Report({
    required this.report,
  });

  factory Report.fromJson(Map<String, dynamic> json) => Report(
        report: List<ReportElement>.from(
            json["report"].map((x) => ReportElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "report": List<dynamic>.from(report.map((x) => x.toJson())),
      };
}

class ReportElement {
  int id;
  String deskripsi;
  int idUser;
  int idGroker;
  DateTime createdAt;
  DateTime updatedAt;
  Groker groker;
  User user;

  ReportElement({
    required this.id,
    required this.deskripsi,
    required this.idUser,
    required this.idGroker,
    required this.createdAt,
    required this.updatedAt,
    required this.groker,
    required this.user,
  });

  factory ReportElement.fromJson(Map<String, dynamic> json) => ReportElement(
        id: json["id"],
        deskripsi: json["deskripsi"],
        idUser: json["id_user"],
        idGroker: json["id_groker"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        groker: Groker.fromJson(json["groker"]),
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "deskripsi": deskripsi,
        "id_user": idUser,
        "id_groker": idGroker,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "groker": groker.toJson(),
        "user": user.toJson(),
      };
}

class Groker {
  int id;
  int idUser;
  String pertanyaan;
  dynamic gambar;
  DateTime createdAt;
  DateTime updatedAt;

  Groker({
    required this.id,
    required this.idUser,
    required this.pertanyaan,
    this.gambar,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Groker.fromJson(Map<String, dynamic> json) => Groker(
        id: json["id"],
        idUser: json["id_user"],
        pertanyaan: json["pertanyaan"],
        gambar: json["gambar"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_user": idUser,
        "pertanyaan": pertanyaan,
        "gambar": gambar,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

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
