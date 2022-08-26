import 'package:b4/view/widgets/custom_buttom.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/providers/onboarding_provider.dart';
import 'app_data/app_colors.dart';
import 'app_data/app_strings.dart';
import 'app_data/app_text_style.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  double? _width, _height;
  // bool? isChecked;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: _height! * 0.80,
        width: _width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Stack(
          children: <Widget>[
            Swiper.children(
              autoplay: false,
              pagination: SwiperPagination(
                  margin: EdgeInsets.only(bottom: _height! * 0.18),
                  builder: DotSwiperPaginationBuilder(
                      color: Colors.grey,
                      activeColor: AppColors.black,
                      size: 10.0,
                      activeSize: 10.0)),
              children: <Widget>[
                ///FIRST SLIDE
                Container(
                  height: _height! * 0.60,
                  width: _width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.appName,
                        style: AppTextStyle.font18OpenSansBoldBlackTextStyle,
                      ),
                      Container(
                        height: _height! * 0.40,
                        width: _width! * 0.75,
                        child: Image.asset(
                          "assets/images/app_images/slide_1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 60),
                          width: _width! * 0.80,
                          child: Text(
                            AppStrings.txtOnboard1,
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                ),

                ///SECOND SLIDE

                Container(
                  height: _height! * 0.60,
                  width: _width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.appName,
                        style: AppTextStyle.font18OpenSansBoldBlackTextStyle,
                      ),
                      Container(
                        height: _height! * 0.40,
                        width: _width! * 0.75,
                        child: Image.asset(
                          "assets/images/app_images/slide_2.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 60),
                          width: _width! * 0.80,
                          child: Text(
                            AppStrings.txtOnboard2,
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                ),

                ///THIRD SLIDE
                Container(
                  height: _height! * 0.60,
                  width: _width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.appName,
                        style: AppTextStyle.font18OpenSansBoldBlackTextStyle,
                      ),
                      Container(
                        height: _height! * 0.40,
                        width: _width! * 0.75,
                        child: Image.asset(
                          "assets/images/app_images/slide_3.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 60),
                          width: _width! * 0.80,
                          child: Text(
                            AppStrings.txtOnboard3,
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                ),

                ///FOURTH SLIDE
                Container(
                  height: _height! * 0.60,
                  width: _width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.appName,
                        style: AppTextStyle.font18OpenSansBoldBlackTextStyle,
                      ),
                      Container(
                        height: _height! * 0.40,
                        width: _width! * 0.75,
                        child: Image.asset(
                          "assets/images/app_images/slide_4.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 60),
                          width: _width! * 0.80,
                          child: Text(
                            AppStrings.txtOnboard4,
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                ),

                ///Fifth Slide
                Container(
                  height: _height! * 0.60,
                  width: _width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.appName,
                        style: AppTextStyle.font18OpenSansBoldBlackTextStyle,
                      ),
                      Container(
                        height: _height! * 0.40,
                        width: _width! * 0.75,
                        child: Image.asset(
                          "assets/images/app_images/slide_5.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 60),
                          width: _width! * 0.80,
                          child: const Text(
                            AppStrings.txtOnboard5,
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomWidgets(),
    );
  }

  Widget bottomWidgets() {
    return Consumer<OnboardingProvider>(builder: (context, provider, child) {
      bool isChecked = provider.getCheckValue();
      return Container(
        height: 100,
        width: _width! * 0.80,
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: isChecked,
                  activeColor: AppColors.red,
                  focusColor: AppColors.white,
                  side: const BorderSide(color: Colors.red),
                  onChanged: (bool? value) {
                    // isChecked = provider.value;
                    provider.setCheckValue(value!);
                    // setState(() {
                    //   this.value = value!;
                    // });
                  },
                ),
                Text.rich(
                  TextSpan(
                      text: AppStrings.txtIAgreeTo,
                      style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
                      children: <InlineSpan>[
                        TextSpan(
                          text: AppStrings.txtTermsConditions,
                          style: AppTextStyle
                              .font14OpenSansRegularRedUnderlineTextStyle,
                        ),
                      ]),
                ),
              ],
            ),
            CustomButton(
              text: AppStrings.txtGetStarted,
              buttonHeight: 45,
              borderRadiusValue: 6.0,
              buttonColor: isChecked == true
                  ? AppColors.red
                  : AppColors.grey.withOpacity(0.6),
              onClick: () {
                if (isChecked == true) {
                  Navigator.pushNamed(context, AppStrings.routeToLogin);
                } else {
                  final snackBar = SnackBar(
                    content:
                        const Text(AppStrings.txtPleaseAgreeToTermsConditions),
                    backgroundColor: (Colors.black),
                    duration: Duration(seconds: 1),
                    action: SnackBarAction(
                      label: AppStrings.txtDismiss,
                      textColor: AppColors.red,
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
            ),
          ],
        ),
      );
    });
  }
}
