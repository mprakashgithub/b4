// To parse this JSON data, do
//
//     final popularCategoryModel = popularCategoryModelFromJson(jsonString);

import 'dart:convert';

PopularCategoryModel popularCategoryModelFromJson(String str) =>
    PopularCategoryModel.fromJson(json.decode(str));

String popularCategoryModelToJson(PopularCategoryModel data) =>
    json.encode(data.toJson());

class PopularCategoryModel {
  PopularCategoryModel({
    required this.total,
    required this.categoryId,
    required this.categoryName,
  });

  int total;
  String categoryId;
  String categoryName;

  factory PopularCategoryModel.fromJson(Map<String, dynamic> json) =>
      PopularCategoryModel(
        total: json["total"],
        categoryId: json["category_id"],
        categoryName: json["category_name"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "category_id": categoryId,
        "category_name": categoryName,
      };
}
