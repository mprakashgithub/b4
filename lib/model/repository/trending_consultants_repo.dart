import 'dart:convert';

import 'package:b4/model/repository/base_repo.dart';
import 'package:http/http.dart' as http;

import '../models/trending_consultants_model.dart';

class TrendingConsultantsRepo {
  ///TrendingConsultants Api Method

  Future<List<TrendingConsultantsModel>>
      trendingConsultantsRepoPostApi() async {
    var client = http.Client();
    final url = BaseRepo.baseUrl + BaseRepo.trendingApiUrl;
    try {
      List<TrendingConsultantsModel> list = [];
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request('POST',
          Uri.parse('https://www.callme4.com:8443/CM4API/usdashboardview'));
      request.body = json.encode(
          {"designtype": "3", "limit": "30", "offset": 0, "uid": "1304492"});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        Map map = json.decode(data); //Response API
        for (var e in map['response']["data"]) {
          TrendingConsultantsModel model = TrendingConsultantsModel.fromJson(e);
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

  // Future<TrendingConsultantsModel?> trendingConsultantsRepoPostApi() async {
  //   var client = http.Client();
  //   final url = BaseRepo.baseUrl + BaseRepo.trendingApiUrl;
  //   try {
  //     var body = {
  //       "designtype": "3",
  //       "limit": "10",
  //       "offset": 0,
  //       "uid": "1304492"
  //     };
  //     var response = await client.post(Uri.parse(url), body: body);
  //     var jsonStr = json.decode(response.body); //return response
  //     print(jsonStr);

  //     if (response.statusCode == 200) {
  //       var json = response.body; //String
  //       // Map<String, dynamic> mapData = jsonDecode(json); //Json Object/map
  //       return TrendingConsultantsModel.fromJson(jsonStr);
  //     }
  //   } catch (e) {
  //     print(e);
  //     throw e;
  //   }
  // }

  // Future<TrendingConsultantsModel?> trendingConsultantsRepoPostApi2() async {
  //   var client = http.Client();
  //   final url = BaseRepo.baseUrl + BaseRepo.trendingApiUrl;
  //   print("URL Repo: $url");
  //   try {
  //     var body = {
  //       "designtype": "3",
  //       "limit": "10",
  //       "offset": 0,
  //       "uid": "1304492"
  //     };
  //     var response = await client.post(Uri.parse(url), body: body);

  //     ///JsonDecode : returns Json Obj
  //     var jsonStr = jsonDecode(response.body);
  //     print("Response: ${response.body}");
  //     print("Json String: ${jsonStr}");
  //     print("statusCode: ${response.statusCode}");
  //     print(response.body);
  //     if (response.statusCode == 200) {
  //       var json = response.body;
  //       Map<String, dynamic> map = jsonDecode(json);
  //       return TrendingConsultantsModel.fromJson(map);
  //     }
  //   } catch (e) {
  //     print(e);
  //     throw e;
  //   }
  // }
}
