import 'package:b4/view/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../view_model/providers/generate_otp_for_login_provider.dart';
import 'app_data/app_colors.dart';
import 'app_data/app_strings.dart';
import 'app_data/app_text_style.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double? _height;
  double? _width;
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? mobileNo, password;
  bool _obscureText = true;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Consumer<GenerateOtpForLoginProvider>(
            builder: (context, provider, child) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
              height: _height,
              width: _width,
              // margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.only(top: 70),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: _height! * 0.02),
                    enterYourMobileNumberText(),
                    SizedBox(height: _height! * 0.12),
                    mobileTextFormField(),
                    SizedBox(height: _height! * 0.08),
                    CustomButton(
                      text: AppStrings.txtNext,
                      // buttonHeight: 45,
                      buttonColor: AppColors.red,
                      onClick: () async {
                        if (mobileNo != null) {
                          await provider.generateOtpPostApi(mobileNo!);
                          print(
                              "login: ${provider.generateOtpForLoginModel!.data!.country}");
                          if (provider.generateOtpForLoginModel!.data!.status ==
                              "success") {
                            Navigator.pushNamed(
                                context, AppStrings.routeToOtpVerification);
                          }
                        } else {
                          final snackBar = SnackBar(
                            content: const Text(AppStrings
                                .txtPleaseEnterYour10DigitMobileNumber),
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
                    )
                  ],
                ),
              ),
            ),
          );
        }));
  }

  Widget enterYourMobileNumberText() {
    return SizedBox(
        width: _width! * 0.80,
        child: Text(
          AppStrings.txtPleaseEnterYour10DigitMobileNumber,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.black.withOpacity(0.8)),
        ));
  }

  Widget mobileTextFormField() {
    return Column(
      children: [
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(border: Border.all(color: AppColors.grey)),
          child: TextFormField(
            controller: mobileNoController,
            keyboardType: TextInputType.phone,
            autofillHints: const [AutofillHints.telephoneNumber],
            cursorColor: AppColors.white,
            inputFormatters: [
              LengthLimitingTextInputFormatter(10),
            ],
            decoration: InputDecoration(
              hintText: AppStrings.txtEnterYourMobileNumber,
              hintStyle: AppTextStyle.font16AsapMediumBlueDarkTextStyle,
              labelStyle: TextStyle(color: AppColors.white),
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(14.0),
                child:
                    Text("+91", style: AppTextStyle.font16AsapBoldRedTextStyle),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.white),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.white),
              ),
            ),
            onChanged: (value) {
              mobileNo = value;
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.txtAVerificationCodeWillBeSentToYourPhone,
            style: TextStyle(color: AppColors.black.withOpacity(0.8)),
          ),
        )
      ],
    );
  }
}
