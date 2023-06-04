import 'dart:convert';

Groker grokerFromJson(String str) => Groker.fromJson(json.decode(str));

String grokerToJson(Groker data) => json.encode(data.toJson());

class Groker {
    List<User> users;

    Groker({
        required this.users,
    });

    factory Groker.fromJson(Map<String, dynamic> json) => Groker(
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
    };
}

class User {
    int id;
    int idUser;
    String pertanyaan;
    dynamic gambar;
    DateTime createdAt;
    DateTime updatedAt;

    User({
        required this.id,
        required this.idUser,
        required this.pertanyaan,
        this.gambar,
        required this.createdAt,
        required this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
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
