import 'package:flutter/cupertino.dart';

import '../../model/models/complete_your_profile_model.dart';
import '../../model/repository/complete_your_profile_repo.dart';

class CompleteYourProfileProvider with ChangeNotifier {
  bool yesValue = false;
  bool noValue = true;
  late CompleteYourProfileModel completeYourProfileModel;

  bool getYesValue() {
    return yesValue;
  }

  void setYesValue(bool value) {
    yesValue = value;
    notifyListeners();
  }

  bool getNoValue() {
    return noValue;
  }

  void setNoValue(bool value) {
    noValue = value;
    notifyListeners();
  }

  Future<void> completeYourProfileApi(
      BuildContext context,
      String fullName,
      String userName,
      String uid,
      String callrate,
      String listOfProfession,
      String prizeMoney) async {
    completeYourProfileModel = (await CompleteYourProfileRepo()
        .completeYourProfileRepoApi(
            fullName, userName, uid, callrate, listOfProfession, prizeMoney))!;
    // if (completeYourProfileModel != null) {
    //   Navigator.pushNamed(context, AppStrings.routeToSetYourCallRates);
    // }
    notifyListeners();
  }
}
