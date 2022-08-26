import 'package:flutter/material.dart';

import '../app_data/app_colors.dart';
import '../app_data/app_strings.dart';
import '../app_data/app_text_style.dart';
import '../widgets/custom_buttom.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  TextEditingController amountController = TextEditingController();
  double? _width, _height;
  bool isDataLoaded = true;

  int? amount = 30;

  @override
  void initState() {
    amountController.text = amount.toString();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          AppStrings.txtAddMoneytoCM4,
          style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.red,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        height: _height!,
        width: _width,
        color: AppColors.backgroundColor,
        child: Column(
          children: [
            Container(
              height: 40,
              width: _width,
              color: AppColors.appGrey,
              child: Center(
                child: Text.rich(
                  TextSpan(text: AppStrings.txtWalletBalance + " ", children: [
                    TextSpan(
                      text: AppStrings.txtRupeesSign + "0.00",
                      style: AppTextStyle.font14OpenSansBoldBlackTextStyle,
                    )
                  ]),
                ),
              ),
            ),
            amountTextFormField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionChip(
                    onPressed: () {
                      setState(() {
                        amountController.text = (amount! + 5).toString();
                        amount = amount! + 5;
                      });
                    },
                    backgroundColor: AppColors.backgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(color: AppColors.red),
                    label: Container(
                      width: 70,
                      child: Text("+\u{20B9}5",
                          style: AppTextStyle.font14OpenSansRegularRedTextStyle,
                          textAlign: TextAlign.center),
                    )),
                ActionChip(
                    onPressed: () {
                      setState(() {
                        amountController.text = (amount! + 10).toString();
                        amount = amount! + 10;
                      });
                    },
                    backgroundColor: AppColors.backgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(color: AppColors.red),
                    label: Container(
                      width: 70,
                      child: Text("+\u{20B9}10",
                          style: AppTextStyle.font14OpenSansRegularRedTextStyle,
                          textAlign: TextAlign.center),
                    )),
                ActionChip(
                    onPressed: () {
                      setState(() {
                        amountController.text = (amount! + 50).toString();
                        amount = amount! + 50;
                      });
                    },
                    backgroundColor: AppColors.backgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(color: AppColors.red),
                    label: Container(
                      width: 70,
                      child: Text("+\u{20B9}50",
                          style: AppTextStyle.font14OpenSansRegularRedTextStyle,
                          textAlign: TextAlign.center),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: AppStrings.txtAddMoney,
              buttonColor: AppColors.red,
            ),
            Container(
              width: _width! * 0.90,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                AppStrings
                    .txtMaxMonthlyLimitIsAndYouCanAddMaximumAmountYourWallet,
                style: AppTextStyle.font12OpenSansRegularBlackTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget amountTextFormField() {
    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 30, bottom: 10),
            padding: EdgeInsets.only(left: 20),
            child: Text(AppStrings.txtAmount)),
        Container(
          height: 45,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(border: Border.all(color: AppColors.grey)),
          child: TextFormField(
            controller: amountController,
            keyboardType: TextInputType.number,
            autofillHints: const [AutofillHints.telephoneNumber],
            cursorColor: AppColors.white,
            // initialValue: "30",
            decoration: InputDecoration(
              // hintText: '30',
              hintStyle: AppTextStyle.font16AsapMediumBlueDarkTextStyle,
              labelStyle: TextStyle(color: AppColors.white),
              contentPadding: EdgeInsets.only(left: 10),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
            ),
            onChanged: (value) {
              amount = int.parse(value);
            },
          ),
        ),
      ],
    );
  }
}
