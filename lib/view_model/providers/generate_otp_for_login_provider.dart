import 'package:flutter/cupertino.dart';

import '../../model/models/generate_otp_for_login_model.dart';
import '../../model/repository/generate_otp_for_login_repo.dart';

class GenerateOtpForLoginProvider with ChangeNotifier {
  GenerateOtpForLoginModel? generateOtpForLoginModel;
  bool isLoaded = false;

  Future<void> generateOtpPostApi(String mobNo) async {
    generateOtpForLoginModel =
        await GenerateOtpForLoginRepo().generateOtpForLoginRepoPostApi(mobNo);
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
