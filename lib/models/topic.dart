import 'dart:convert';

TopicModel topicModelFromJson(String str) =>
    TopicModel.fromJson(json.decode(str));

String topicModelToJson(TopicModel data) => json.encode(data.toJson());

class TopicModel {
  bool success;
  String message;
  Data data;

  TopicModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory TopicModel.fromJson(Map<String, dynamic> json) => TopicModel(
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
  String id;
  String nama_topik;

  Data({
    required this.id,
    required this.nama_topik,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        nama_topik: json["nama_topik"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_topik": nama_topik,
      };
}
