import 'dart:convert';

Article articleFromJson(String str) => Article.fromJson(json.decode(str));

String articleToJson(Article data) => json.encode(data.toJson());

class Article {
  String message;
  List<Datum> data;

  Article({
    required this.message,
    required this.data,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  get article => null;

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  int idUser;
  String judul;
  String isiArtikel;
  String gambar;
  dynamic keteranganStatus;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic jumlahSuka;

  Datum({
    required this.id,
    required this.idUser,
    required this.judul,
    required this.isiArtikel,
    required this.gambar,
    this.keteranganStatus,
    required this.createdAt,
    required this.updatedAt,
    this.jumlahSuka,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        idUser: json["id_user"],
        judul: json["judul"],
        isiArtikel: json["isi_artikel"],
        gambar: json["gambar"],
        keteranganStatus: json["keterangan_status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        jumlahSuka: json["jumlah_suka"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_user": idUser,
        "judul": judul,
        "isi_artikel": isiArtikel,
        "gambar": gambar,
        "keterangan_status": keteranganStatus,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "jumlah_suka": jumlahSuka,
      };
}
