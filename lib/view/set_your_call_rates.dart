import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'app_data/app_colors.dart';
import 'app_data/app_strings.dart';
import 'app_data/app_text_style.dart';

class SetYourCallRates extends StatefulWidget {
  const SetYourCallRates({Key? key}) : super(key: key);

  @override
  State<SetYourCallRates> createState() => _SetYourCallRatesState();
}

class _SetYourCallRatesState extends State<SetYourCallRates> {
  double? _width, _height;
  int indRate = 0;
  int internationalRate = 0;
  @override
  void initState() {
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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: AppColors.red,
            )),
        title: Text(
          AppStrings.txtSetYourCallRates,
          style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ActionChip(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppStrings.routeToSetYourOnlineHours);
                },
                backgroundColor: AppColors.backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                side: BorderSide(color: AppColors.red),
                label: Text(
                  AppStrings.txtSave,
                  style: AppTextStyle.font14OpenSansRegularRedTextStyle,
                )),
          )
        ],
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: _height! * 0.80,
          // padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          width: _width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 30, bottom: 40),
                  child: Text(AppStrings.txtSetYourCallRateForINDIA)),
              FittedBox(
                child: SleekCircularSlider(
                    initialValue: 0,
                    min: 0,
                    max: 360,
                    innerWidget: (double) {
                      return Center(
                          child: Text(
                        AppStrings.txtRupeesSign + " $indRate",
                        style: AppTextStyle.font18OpenSansRegularBlackTextStyle,
                      ));
                    },
                    onChangeStart: (double v) {
                      // print("Change start: $v");
                    },
                    onChangeEnd: (double v) {
                      // print("Change end: $v");
                    },
                    appearance: CircularSliderAppearance(
                        angleRange: 360,
                        startAngle: 270,
                        customColors: CustomSliderColors(
                            dotColor: AppColors.red,
                            shadowColor: AppColors.grey,
                            progressBarColor: AppColors.red),
                        customWidths: CustomSliderWidths(
                            progressBarWidth: 5,
                            shadowWidth: 12,
                            handlerSize: 10,
                            trackWidth: 3)),
                    onChange: (double value) {
                      setState(() {
                        // rate = roundOffToXDecimal(value, numberOfDecimal: 0);
                        indRate =
                            double.parse(value.toStringAsFixed(0)).toInt();
                      });
                      print(value);
                    }),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 30,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        AppStrings.txtRupeesSign +
                            " $indRate/" +
                            AppStrings.txtMin,
                        style: AppTextStyle.font18OpenSansRegularBlackTextStyle,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.video_call,
                        size: 30,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        AppStrings.txtRupeesSign +
                            " $indRate/" +
                            AppStrings.txtMin,
                        style: AppTextStyle.font18OpenSansRegularBlackTextStyle,
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 1,
                color: AppColors.black.withOpacity(0.5),
                margin: EdgeInsets.only(top: 5, bottom: 30),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Text(AppStrings.txtSetYourCallRateForINTERNATIONAL)),
              FittedBox(
                child: SleekCircularSlider(
                    initialValue: 0,
                    min: 0,
                    max: 360,
                    innerWidget: (double) {
                      return Center(
                          child: Text(
                        AppStrings.txtRupeesSign + " $internationalRate",
                        style: AppTextStyle.font18OpenSansRegularBlackTextStyle,
                      ));
                    },
                    onChangeStart: (double v) {
                      // print("Change start: $v");
                    },
                    onChangeEnd: (double v) {
                      // print("Change end: $v");
                    },
                    appearance: CircularSliderAppearance(
                        angleRange: 360,
                        startAngle: 270,
                        customColors: CustomSliderColors(
                            dotColor: AppColors.red,
                            shadowColor: AppColors.grey,
                            progressBarColor: AppColors.red),
                        customWidths: CustomSliderWidths(
                            progressBarWidth: 5,
                            shadowWidth: 12,
                            handlerSize: 10,
                            trackWidth: 3)),
                    onChange: (double value) {
                      setState(() {
                        // rate = roundOffToXDecimal(value, numberOfDecimal: 0);
                        internationalRate =
                            double.parse(value.toStringAsFixed(0)).toInt();
                      });
                      print(value);
                    }),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 30,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        AppStrings.txtRupeesSign +
                            " $internationalRate/" +
                            AppStrings.txtMin,
                        style: AppTextStyle.font18OpenSansRegularBlackTextStyle,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.video_call,
                        size: 30,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        AppStrings.txtRupeesSign +
                            " $internationalRate/" +
                            AppStrings.txtMin,
                        style: AppTextStyle.font18OpenSansRegularBlackTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double roundOffToXDecimal(double number, {int numberOfDecimal = 0}) {
    // To prevent number that ends with 5 not round up correctly in Dart (eg: 2.275 round off to 2.27 instead of 2.28)
    String numbersAfterDecimal = number.toString().split('.')[1];
    if (numbersAfterDecimal != '0') {
      int existingNumberOfDecimal = numbersAfterDecimal.length;
      number += 1 / (10 * pow(10, existingNumberOfDecimal));
    }

    return double.parse(number.toStringAsFixed(numberOfDecimal));
  }
}
