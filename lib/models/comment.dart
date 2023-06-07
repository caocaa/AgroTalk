import 'dart:convert';

CommentsModel commentsModelFromJson(String str) => CommentsModel.fromJson(json.decode(str));

String commentsModelToJson(CommentsModel data) => json.encode(data.toJson());

class CommentsModel {
    int status;
    List<Comment> comments;

    CommentsModel({
        required this.status,
        required this.comments,
    });

    factory CommentsModel.fromJson(Map<String, dynamic> json) => CommentsModel(
        status: json["status"],
        comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
    };
}

class Comment {
    int id;
    int idUser;
    int idGroker;
    String comment;
    DateTime createdAt;
    DateTime updatedAt;
    Groker groker;
    User user;

    Comment({
        required this.id,
        required this.idUser,
        required this.idGroker,
        required this.comment,
        required this.createdAt,
        required this.updatedAt,
        required this.groker,
        required this.user,
    });

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        idUser: json["id_user"],
        idGroker: json["id_groker"],
        comment: json["comment"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        groker: Groker.fromJson(json["groker"]),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "id_user": idUser,
        "id_groker": idGroker,
        "comment": comment,
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

