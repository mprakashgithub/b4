import 'package:flutter/material.dart';

class ConsultantsModel {
  String? consultDomainName;
  Widget? image;
  ConsultantsModel({this.consultDomainName, this.image});
}

List<ConsultantsModel> consultantsData = [
  ConsultantsModel(
      consultDomainName: "Astrology",
      image: Image.asset("assets/icons/person.png")),
  ConsultantsModel(
      consultDomainName: "Spiritual",
      image: Image.asset("assets/icons/person.png")),
  ConsultantsModel(
      consultDomainName: "Relationship",
      image: Image.asset("assets/icons/person.png")),
  ConsultantsModel(
      consultDomainName: "Doctor",
      image: Image.asset("assets/icons/person.png")),
  ConsultantsModel(
      consultDomainName: "Spiritual",
      image: Image.asset("assets/icons/person.png")),
  ConsultantsModel(
      consultDomainName: "Relationship",
      image: Image.asset("assets/icons/person.png")),
  ConsultantsModel(
      consultDomainName: "Doctor",
      image: Image.asset("assets/icons/person.png")),
  ConsultantsModel(
      consultDomainName: "Education",
      image: Image.asset("assets/icons/person.png"))
];
