import 'dart:convert';

import 'package:b4/model/repository/base_repo.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

import '../models/complete_your_profile_model.dart';

class CompleteYourProfileRepo {
  static TextEditingController nameController = TextEditingController();
  static TextEditingController usernameController = TextEditingController();

  Future<CompleteYourProfileModel?> completeYourProfileRepoApi(
      String fullName,
      String userName,
      String uid,
      String callrate,
      String listOfProfession,
      String prizeMoney) async {
    var client = http.Client();
    final url = BaseRepo.baseUrl + BaseRepo.completeYourProfileUrl;
    print("CompleteYourProfile Repo: $url");
    try {
      var headers = BaseRepo.baseHeader;
      var request = http.Request('POST', Uri.parse(url));
      request.body = json.encode({"fullName": "M Prakash"});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
        var data = await response.stream.bytesToString();
        var map = json.decode(data);
        var model = CompleteYourProfileModel.fromJson(map);
        print(model);
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
