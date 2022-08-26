import 'dart:convert';
import 'package:b4/model/repository/base_repo.dart';
import 'package:http/http.dart' as http;

import '../models/generate_otp_for_login_model.dart';

class GenerateOtpForLoginRepo {
  ///GenerateOtpForLogin Api Method

  Future<GenerateOtpForLoginModel?> generateOtpForLoginRepoPostApi(
      String mobNo) async {
    final url = BaseRepo.baseUrl + BaseRepo.generateOtpForLoginApiUrl;
    print("Gen Otp Login Repo: $mobNo");
    try {
      var headers = {'Content-Type': 'text/plain'};
      var request = http.Request('POST', Uri.parse(url));
      request.body =
          '''{"country_code":"1","mobile":$mobNo,"latitude":"28.5672318","longitude":"77.3809184","city":"Noida","state":"Uttar Pradesh","fcmToken":"c2gvKiyOhbk:APA91bF8lUQURPhAr55gNIhdVdvRri5OGtf2_8SjlPGeWpoDsLCycG8p_3JKjwjugBKcH_DBcqndvnXTHM5uKp2BoycSSd_lLD1m_rew-Ho8GRQTbprBIbFjqXNELabNuvs78JKXYQSh"}''';
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        var map = json.decode(data);
        var model = GenerateOtpForLoginModel.fromJson(map);
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
