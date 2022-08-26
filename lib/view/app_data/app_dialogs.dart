import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

class AppDialogs {
  ///Withdraw Dialog
  static Future openWithdrawDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2)), //this right here
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width * 0.90,
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  Text(
                    "You can withdraw money when the balance is \u{20B9}50 or more.",
                    style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "OK",
                        style: AppTextStyle.font16AsapRegularRedTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
