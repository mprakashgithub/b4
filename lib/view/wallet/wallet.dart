import 'package:flutter/material.dart';

import '../app_data/app_colors.dart';
import '../app_data/app_dialogs.dart';
import '../app_data/app_strings.dart';
import '../app_data/app_text_style.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  TextEditingController categoryController = TextEditingController();
  double? _width, _height;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text.rich(TextSpan(
          text: AppStrings.appName,
          style: AppTextStyle.font14OpenSansRegularRedTextStyle,
          children: <InlineSpan>[
            TextSpan(
              text: AppStrings.txtWallet,
              style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
            ),
          ],
        )),
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              AppStrings.txtStatement,
              style: AppTextStyle.font14OpenSansRegularRedTextStyle,
            ),
          )
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: _height! * 0.80,
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: _width,
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "\u{20B9}0.00",
                          style:
                              AppTextStyle.font20OpenSansMediumBlackTextStyle,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  ActionChip(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppStrings.routeToAddMoney);
                      },
                      backgroundColor: AppColors.backgroundColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(color: AppColors.red),
                      label: Text(
                        AppStrings.txtAddMoney,
                        style: AppTextStyle.font14OpenSansRegularRedTextStyle,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ActionChip(
                      onPressed: () {
                        AppDialogs.openWithdrawDialog(context);
                      },
                      backgroundColor: AppColors.backgroundColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(color: AppColors.grey),
                      label: Text(
                        AppStrings.txtWithdraw,
                        style: AppTextStyle.font14OpenSansRegularGreyTextStyle,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20, height: 20),
                  Text.rich(TextSpan(
                    text: AppStrings.txtInCaseOfAnyIssue + " ",
                    style: AppTextStyle.font12OpenSansRegularBlackTextStyle,
                    children: <InlineSpan>[
                      TextSpan(
                        text: AppStrings.txtCALLUS,
                        style: AppTextStyle.font14OpenSansBoldRedTextStyle,
                      ),
                    ],
                  )),
                ],
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.txtCallMe4Balance,
                    style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
                  )),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  // margin: EdgeInsets.only(left: 20, right: 20),
                  height: 80,
                  // color: AppColors.blue,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("0"),
                          Text(
                            AppStrings.txtTotalCalls,
                            style: AppTextStyle
                                .font12OpenSansRegularBlackTextStyle,
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 0.5,
                        color: AppColors.black,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("00:00"),
                          Text(
                            AppStrings.txtTotalMins,
                            style: AppTextStyle
                                .font12OpenSansRegularBlackTextStyle,
                          )
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 0.5,
                        color: AppColors.black,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("00:00"),
                          Text(
                            AppStrings.txtTodaysEarning,
                            style: AppTextStyle
                                .font12OpenSansRegularBlackTextStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.txtRecentActivity,
                    style: AppTextStyle.font12OpenSansRegularBlackTextStyle,
                  )),
              Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(top: 100),
                  child:
                      Image.asset("assets/images/app_images/us_no_data.png")),
              Text(
                AppStrings.txtOops,
                style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
              ),
              Text(
                AppStrings.txtNoCallRecordsFound,
                style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
