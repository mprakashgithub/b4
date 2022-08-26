import 'package:flutter/material.dart';

import '../app_data/app_strings.dart';
import '../complete_your_profile.dart';
import '../login.dart';
import '../onboarding.dart';
import '../otp_verification.dart';
import '../profession.dart';
import '../set_your_call_rates.dart';
import '../set_your_online_hours.dart';
import '../splash.dart';
import '../wallet/add_money.dart';
import 'bottom_nav_router.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  late Widget pageResult;
  switch (settings.name) {
    case AppStrings.routeToSplash:
      pageResult = const Splash();
      break;
    case AppStrings.routeToOnboarding:
      pageResult = const Onboarding();
      break;
    case AppStrings.routeToLogin:
      pageResult = const Login();
      break;
    case AppStrings.routeToOtpVerification:
      pageResult = const OtpVerification();
      break;
    case AppStrings.routeToCompleteYourProfile:
      pageResult = const CompleteYourProfile();
      break;
    case AppStrings.routeToProfession:
      pageResult = const Profession();
      break;
    case AppStrings.routeToSetYourCallRates:
      pageResult = const SetYourCallRates();
      break;
    case AppStrings.routeToSetYourOnlineHours:
      pageResult = const SetYourOnlineHours();
      break;
    case AppStrings.routeToBottomNavRouter:
      pageResult = const BottomNavRouter();
      break;
    case AppStrings.routeToAddMoney:
      pageResult = const AddMoney();
      break;
  }
  debugPrint(pageResult.toString());
  return _generateMaterialRoute(pageResult);
}

Route<dynamic> _generateMaterialRoute(Widget widget) {
  return MaterialPageRoute(builder: (_) => widget);
}
