import 'package:flutter/material.dart';

import '../../view/app_data/app_strings.dart';

class ProfessionProvider with ChangeNotifier {
  List<String> selectedCategories = [];
  List<String>? duplicateCategories;
  String searchString = "";

  List<String> result = [];
  void setDuplicateCategories() {
    duplicateCategories = AppStrings.choices;
    notifyListeners();
  }

  void searchResult(String value) {
    result = selectedCategories
        .where((element) => element.toLowerCase().contains(value.toLowerCase()))
        .toList();
    notifyListeners();
  }
}
