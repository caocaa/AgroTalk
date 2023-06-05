import 'dart:convert';

Groker grokerFromJson(String str) => Groker.fromJson(json.decode(str));

String grokerToJson(Groker data) => json.encode(data.toJson());

class Groker {
    List<GrokerElement> groker;

    Groker({
        required this.groker,
    });

    factory Groker.fromJson(Map<String, dynamic> json) => Groker(
        groker: List<GrokerElement>.from(json["groker"].map((x) => GrokerElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "groker": List<dynamic>.from(groker.map((x) => x.toJson())),
    };
}

class GrokerElement {
    int id;
    int idUser;
    String pertanyaan;
    dynamic gambar;
    DateTime createdAt;
    DateTime updatedAt;
    User user;

    GrokerElement({
        required this.id,
        required this.idUser,
        required this.pertanyaan,
        this.gambar,
        required this.createdAt,
        required this.updatedAt,
        required this.user,
    });

    factory GrokerElement.fromJson(Map<String, dynamic> json) => GrokerElement(
        id: json["id"],
        idUser: json["id_user"],
        pertanyaan: json["pertanyaan"],
        gambar: json["gambar"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "id_user": idUser,
        "pertanyaan": pertanyaan,
        "gambar": gambar,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user": user.toJson(),
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

