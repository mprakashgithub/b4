// To parse this JSON data, do
//
//     final completeYourProfileModel = completeYourProfileModelFromJson(jsonString);

import 'dart:convert';

CompleteYourProfileModel completeYourProfileModelFromJson(String str) =>
    CompleteYourProfileModel.fromJson(json.decode(str));

String completeYourProfileModelToJson(CompleteYourProfileModel data) =>
    json.encode(data.toJson());

class CompleteYourProfileModel {
  CompleteYourProfileModel({
    required this.status,
    required this.message,
    required this.userRegistrationStatus,
  });

  String status;
  String message;
  int userRegistrationStatus;

  factory CompleteYourProfileModel.fromJson(Map<String, dynamic> json) =>
      CompleteYourProfileModel(
        status: json["status"],
        message: json["message"],
        userRegistrationStatus: json["user_registration_status"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "user_registration_status": userRegistrationStatus,
      };
}
