import 'package:b4/view/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_data/app_colors.dart';
import 'app_data/app_strings.dart';
import 'app_data/app_text_style.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
      body: GestureDetector(
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
                enterOtpText(),
                SizedBox(height: _height! * 0.08),
                otpTextFormField(),
                SizedBox(height: _height! * 0.08),
                CustomButton(
                  text: AppStrings.txtVerify,
                  buttonColor: AppColors.red,
                  onClick: () {
                    Navigator.pushNamed(
                        context, AppStrings.routeToCompleteYourProfile);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget enterOtpText() {
    return SizedBox(
        width: _width! * 0.80,
        height: 100,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              AppStrings.txtEnterOTP,
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.black.withOpacity(0.8)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("9999999999",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.font18OpenSansSemiBoldBlackTextStyle),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: AppColors.red,
                    ))
              ],
            ),
          ],
        ));
  }

  Widget otpTextFormField() {
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
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(5),
            ],
            decoration: InputDecoration(
              hintText: AppStrings.txtEnterOTP,
              hintStyle: AppTextStyle.font16AsapMediumBlueDarkTextStyle,
              labelStyle: TextStyle(color: AppColors.white),
              contentPadding: EdgeInsets.only(left: 10),
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
          // alignment: Alignment.centerLeft,
          child: Text.rich(
            TextSpan(
                text: AppStrings.txtDidntReceive,
                style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
                children: <InlineSpan>[
                  TextSpan(
                    text: AppStrings.txtResend,
                    style: AppTextStyle.font14OpenSansRegularRedTextStyle,
                  ),
                ]),
            // textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
