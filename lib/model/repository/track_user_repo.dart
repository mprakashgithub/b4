import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/track_user_model.dart';

class TrackUserRepo {
  Future<TrackUserModel?> trackUserRepoApi() async {
    // final url = BaseRepo.baseUrl + BaseRepo.generateOtpForLoginApiUrl;

    try {
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request(
          'POST', Uri.parse('https://www.callme4.com:8443/CM4API/Ususertrack'));
      request.body = json.encode({
        "user_id": "2047138078",
        "name": "Narendra",
        "contact_number": "919873643554"
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        var map = json.decode(data);
        var model = TrackUserModel.fromJson(map);
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
