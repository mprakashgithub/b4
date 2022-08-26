import 'package:flutter/material.dart';

class ConsultDomainModel {
  String? consultDomainName;
  Widget? image;
  ConsultDomainModel({this.consultDomainName, this.image});
}

List<ConsultDomainModel> consultDomainData = [
  ConsultDomainModel(
      consultDomainName: "Astrology",
      image: Image.asset("assets/icons/person.png")),
  ConsultDomainModel(
      consultDomainName: "Spiritual",
      image: Image.asset("assets/icons/person.png")),
  ConsultDomainModel(
      consultDomainName: "Relationship",
      image: Image.asset("assets/icons/person.png")),
  ConsultDomainModel(
      consultDomainName: "Doctor",
      image: Image.asset("assets/icons/person.png")),
  ConsultDomainModel(
      consultDomainName: "Spiritual",
      image: Image.asset("assets/icons/person.png")),
  ConsultDomainModel(
      consultDomainName: "Relationship",
      image: Image.asset("assets/icons/person.png")),
  ConsultDomainModel(
      consultDomainName: "Doctor",
      image: Image.asset("assets/icons/person.png")),
  ConsultDomainModel(
      consultDomainName: "Education",
      image: Image.asset("assets/icons/person.png"))
];
