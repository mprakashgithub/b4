import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/routes/app_router.dart';
import 'view_model/providers/bookmark_provider.dart';
import 'view_model/providers/complete_your_profile_provider.dart';
import 'view_model/providers/generate_otp_for_login_provider.dart';
import 'view_model/providers/onboarding_provider.dart';
import 'view_model/providers/popular_category_provider.dart';
import 'view_model/providers/profession_provider.dart';
import 'view_model/providers/trending_consultants_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<OnboardingProvider>(
            create: (_) => OnboardingProvider()),
        ListenableProvider<CompleteYourProfileProvider>(
            create: (_) => CompleteYourProfileProvider()),
        ListenableProvider<ProfessionProvider>(
            create: (_) => ProfessionProvider()),
        ChangeNotifierProvider<GenerateOtpForLoginProvider>(
            create: (_) => GenerateOtpForLoginProvider()),
        ListenableProvider<TrendingConsultantsProvider>(
            create: (_) => TrendingConsultantsProvider()),
        ListenableProvider<PopularCategoryProvider>(
            create: (_) => PopularCategoryProvider()),
        ListenableProvider<BookmarkProvider>(create: (_) => BookmarkProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
