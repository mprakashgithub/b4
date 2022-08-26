import 'dart:convert';

import 'package:b4/model/repository/base_repo.dart';
import 'package:http/http.dart' as http;

import '../models/bookmark_model.dart';

class BookmarkRepo {
  Future<BookmarkModel?> bookmarkRepoApi() async {
    var client = http.Client();
    final url = BaseRepo.baseUrl + BaseRepo.generateOtpForLoginApiUrl;
    print("Bookmark Repo: $url");
    try {
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request('POST',
          Uri.parse('https://www.callme4.com:8443/CM4API/Usmarkfavourite'));
      request.body =
          json.encode({"uid": "1315698", "bookmarkPersonId": "1299155"});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        var map = json.decode(data);
        var model = BookmarkModel.fromJson(map);
        return model;
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
