import 'package:flutter/material.dart';

import 'app_data/app_colors.dart';
import 'app_data/app_strings.dart';
import 'app_data/app_text_style.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(
          context, AppStrings.routeToOnboarding, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            "assets/images/app_images/us_splash_logo.png",
            color: AppColors.red,
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              AppStrings.appName,
              style: AppTextStyle.font24OpenSansRegularRedTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
