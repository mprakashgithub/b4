// To parse this JSON data, do
//
//     final trackUserModel = trackUserModelFromJson(jsonString);

import 'dart:convert';

TrackUserModel trackUserModelFromJson(String str) =>
    TrackUserModel.fromJson(json.decode(str));

String trackUserModelToJson(TrackUserModel data) => json.encode(data.toJson());

class TrackUserModel {
  TrackUserModel({
    required this.status,
    required this.response,
  });

  int status;
  Response response;

  factory TrackUserModel.fromJson(Map<String, dynamic> json) => TrackUserModel(
        status: json["status"],
        response: Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "response": response.toJson(),
      };
}

class Response {
  Response({
    required this.code,
    required this.message,
  });

  int code;
  String message;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
