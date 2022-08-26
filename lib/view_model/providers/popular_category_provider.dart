import 'package:flutter/cupertino.dart';

import '../../model/models/popular_category_model.dart';
import '../../model/repository/popular_category_repo.dart';

class PopularCategoryProvider with ChangeNotifier {
  List<PopularCategoryModel> list = [];
  List<String> selectedCategories = [];
  List<String> dublicateCategories = [];
  bool isLoaded = false;

  Future<void> popularCategoryApi() async {
    list = await PopularCategoryRepo().popularCategoryRepo();
    notifyListeners();
  }

  List<String> getListData() {
    return selectedCategories;
  }

  void addDataToList(String newValue) {
    selectedCategories.add(newValue);
    notifyListeners();
  }

  void deleteData(int index) {
    selectedCategories.removeAt(index);
    notifyListeners();
  }

  bool getIsLoaded() {
    return isLoaded;
  }

  void setIsLoaded(bool value) {
    isLoaded = value;
    notifyListeners();
  }

  void duplicateListData() {
    list.forEach((element) {
      dublicateCategories.add(element.categoryName);
    });
    notifyListeners();
  }
}
