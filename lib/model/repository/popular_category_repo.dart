import 'dart:convert';
import 'package:b4/model/repository/base_repo.dart';
import 'package:http/http.dart' as http;

import '../models/popular_category_model.dart';

class PopularCategoryRepo {
  ///PopularCategory Api Method

  Future<List<PopularCategoryModel>> popularCategoryRepo() async {
    var client = http.Client();
    final url = BaseRepo.baseUrl + BaseRepo.trendingApiUrl;
    try {
      List<PopularCategoryModel> list = [];
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request('POST', Uri.parse(' '));
      request.body = json.encode({"uid": "1315698"});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        var map = json.decode(data); //Response API
        print(map);
        print("Popular map data: ${map["response"]["data"]["popular"]}");
        // var mData = map["response"]["data"]["popular"];
        for (var e in map["response"]["data"]["popular"]) {
          print('Inside for loop: $e');
          PopularCategoryModel model = PopularCategoryModel.fromJson(e);
          print("model :: $model");
          list.add(model);
        }
        return list;
      } else {
        print(response.reasonPhrase);
        return list;
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
