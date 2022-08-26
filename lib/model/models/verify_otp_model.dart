// To parse this JSON data, do
//
//     final verifyOtpModel = verifyOtpModelFromJson(jsonString);

import 'dart:convert';

VerifyOtpModel verifyOtpModelFromJson(String str) =>
    VerifyOtpModel.fromJson(json.decode(str));

String verifyOtpModelToJson(VerifyOtpModel data) => json.encode(data.toJson());

class VerifyOtpModel {
  VerifyOtpModel({
    required this.status,
    required this.message,
    required this.errorCode,
    required this.errorDesc,
    required this.data,
  });

  String status;
  String message;
  String errorCode;
  String errorDesc;
  Data data;

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) => VerifyOtpModel(
        status: json["status"],
        message: json["message"],
        errorCode: json["errorCode"],
        errorDesc: json["errorDesc"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "errorCode": errorCode,
        "errorDesc": errorDesc,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.userRegistrationStatus,
    required this.user,
    required this.rateList,
  });

  int userRegistrationStatus;
  User user;
  List<RateList> rateList;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userRegistrationStatus: json["user_registration_status"],
        user: User.fromJson(json["user"]),
        rateList: List<RateList>.from(
            json["rateList"].map((x) => RateList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "user_registration_status": userRegistrationStatus,
        "user": user.toJson(),
        "rateList": List<dynamic>.from(rateList.map((x) => x.toJson())),
      };
}

class RateList {
  RateList({
    required this.id,
    required this.rate,
  });

  int id;
  double rate;

  factory RateList.fromJson(Map<String, dynamic> json) => RateList(
        id: json["id"],
        rate: json["rate"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rate": rate,
      };
}

class User {
  User({
    required this.id,
    required this.userId,
  });

  int id;
  String userId;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
      };
}
