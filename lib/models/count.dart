import 'dart:convert';

Count countFromJson(String str) => Count.fromJson(json.decode(str));

String countToJson(Count data) => json.encode(data.toJson());

class Count {
  bool success;
  String message;
  int data;

  Count({
    required this.success,
    required this.message,
    required this.data,
  });

  factory Count.fromJson(Map<String, dynamic> json) => Count(
        success: json["success"],
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data,
      };
}
