import 'package:flutter/cupertino.dart';

import '../../model/models/bookmark_model.dart';
import '../../model/repository/bookmark_repo.dart';

class BookmarkProvider with ChangeNotifier {
  BookmarkModel? bookmarkModel;
  bool isLoaded = false;

  Future<void> bookmarkApi(String mobNo) async {
    bookmarkModel = await BookmarkRepo().bookmarkRepoApi();
    notifyListeners();
  }

  bool getIsLoaded() {
    return isLoaded;
  }

  void setIsLoaded(bool value) {
    isLoaded = value;
    notifyListeners();
  }
}
