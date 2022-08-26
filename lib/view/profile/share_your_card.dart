import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

import '../app_data/app_colors.dart';
import '../app_data/app_text_style.dart';

class ShareYourCard extends StatefulWidget {
  const ShareYourCard({Key? key}) : super(key: key);

  @override
  State<ShareYourCard> createState() => _ShareYourCardState();
}

class _ShareYourCardState extends State<ShareYourCard> {
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
        title: Text(
          "Share Your Card",
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
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: _height,
          width: _width,
          color: AppColors.backgroundColor,
          // padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Choose a template and spread the news"),
              ),

              ///1st Card Template
              Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: SizedBox(
                            // height: 200,
                            width: _width! * 0.95,
                            child: Image.asset(
                              "assets/images/app_images/banner_bg.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Positioned(
                        left: 15,
                        top: 52,
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.black),
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/app_images/us_profile_pic_placeholder.png",
                                      fit: BoxFit.cover,
                                    ))),
                            SmoothStarRating(
                              rating: 4.5,
                              size: 15,
                              color: AppColors.grey,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              defaultIconData: Icons.star_border,
                              starCount: 5,
                              allowHalfRating: false,
                              spacing: 1.0,
                              onRatingChanged: (value) {
                                // setState(() {
                                //   rating = value;
                                // });
                              },
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: _width! * 0.316,
                        top: 52,
                        child: Container(
                          // height: 100,
                          width: _width! * 0.60,
                          padding: EdgeInsets.only(left: 10, bottom: 10),
                          // margin: EdgeInsets.only(right: 90),
                          // padding: EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                              color: AppColors.deepBlue,
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            // width: _width! * 0.20,
                            // color: AppColors.lightBlueColor,
                            margin: EdgeInsets.only(right: 80),
                            padding: EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Manish Prakash",
                                  style: AppTextStyle
                                      .font16OpenSansRegularWhiteTextStyle,
                                ),
                                Text(
                                  "mprakash1@cm4",
                                  style: AppTextStyle
                                      .font14OpenSansRegularWhiteTextStyle,
                                ),
                                Text(
                                  "Relationship Counselor",
                                  style: AppTextStyle
                                      .font12OpenSansRegularWhiteTextStyle,
                                ),
                                Text(
                                  "Available time : 10:00 AM-06:00 PM",
                                  style: AppTextStyle
                                      .font12OpenSansRegularWhiteTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 13,
                        top: 78,
                        child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                // color: AppColors.deepBlue,
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/app_images/white_rectangle.png",
                                  fit: BoxFit.fitWidth,
                                ))),
                      ),
                      Positioned(
                        right: 20,
                        top: 110,
                        child: Column(
                          children: [
                            Text(
                              "Consultation",
                              style: TextStyle(fontSize: 8),
                            ),
                            Text(
                              "Fees",
                              style: TextStyle(fontSize: 8),
                            ),
                            Text(
                              "\u{20B9}0/min",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 15,
                          top: 5,
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset(
                                "assets/images/app_images/callme4_logo_share_card.png"),
                          )),
                      Positioned(
                          right: 20,
                          bottom: 10,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/app_images/callme4_logo_share_card.png"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/app_images/callme4_logo_share_card.png"),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: 45,
                      width: _width! * 0.95,
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Share this template",
                          style: AppTextStyle.font16OpenSansRegularRedTextStyle,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              ///2nd Card Template
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: SizedBox(
                            height: 200,
                            width: _width! * 0.95,
                            child: Image.asset(
                              "assets/images/app_images/share_card_2_bg.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Positioned(
                        left: 60,
                        top: 50,
                        child: Container(
                          height: 120,
                          width: _width! * 0.76,
                          child: Image.asset(
                            "assets/images/app_images/share_card_design_2.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 50,
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.black),
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/images/app_images/us_profile_pic_placeholder.png",
                                      fit: BoxFit.cover,
                                    ))),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 15,
                          top: 45,
                          child: SizedBox(
                            height: 45,
                            width: 60,
                            child: Image.asset(
                                "assets/images/app_images/share_card_call_badge.png"),
                          )),
                      Positioned(
                          right: 40,
                          bottom: 25,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/app_images/callme4_logo_share_card.png"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/app_images/callme4_logo_share_card.png"),
                              ),
                            ],
                          )),
                      Positioned(
                        left: 130,
                        top: 50,
                        child: Container(
                          margin: EdgeInsets.only(right: 90),
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Manish Prakash",
                                style: AppTextStyle
                                    .font16OpenSansRegularWhiteTextStyle,
                              ),
                              Text(
                                "mprakash1@cm4",
                                style: AppTextStyle
                                    .font14OpenSansRegularWhiteTextStyle,
                              ),
                              Text(
                                "Relationship Counselor",
                                style: AppTextStyle
                                    .font12OpenSansRegularWhiteTextStyle,
                              ),
                              Text(
                                "Available time : 10:00 AM-06:00 PM",
                                style: AppTextStyle
                                    .font12OpenSansRegularWhiteTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: 45,
                      width: _width! * 0.95,
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Share this template",
                          style: AppTextStyle.font16OpenSansRegularRedTextStyle,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),

              ///3rd Card Template
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: _width! * 0.95,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          height: 120,
                          width: 315,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10))),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(10)),
                            child: Image.asset(
                              "assets/images/app_images/share_card_bg_top.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 50,
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.black),
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/images/app_images/us_profile_pic_placeholder.png",
                                      fit: BoxFit.cover,
                                    ))),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 120,
                          width: 315,
                          child: Image.asset(
                            "assets/images/app_images/share_card_bg_bottom.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                          right: 30,
                          bottom: 10,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/app_images/callme4_logo_share_card.png"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/app_images/callme4_logo_share_card.png"),
                              ),
                            ],
                          )),
                      Positioned(
                        left: 130,
                        top: 50,
                        child: Container(
                          margin: EdgeInsets.only(right: 90),
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Manish Prakash",
                                style: AppTextStyle
                                    .font14OpenSansRegularBlackTextStyle,
                              ),
                              Text(
                                "mprakash1@cm4",
                                style: AppTextStyle
                                    .font14OpenSansRegularBlackTextStyle,
                              ),
                              Text(
                                "Relationship Counselor",
                                style: AppTextStyle
                                    .font12OpenSansRegularBlackTextStyle,
                              ),
                              Text(
                                "Available time : 10:00 AM-06:00 PM",
                                style: AppTextStyle
                                    .font12OpenSansRegularBlackTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: 15,
                          top: 15,
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset(
                                "assets/images/app_images/callme4_logo_share_card.png"),
                          )),
                    ],
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: 45,
                      width: _width! * 0.95,
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Share this template",
                          style: AppTextStyle.font16OpenSansRegularRedTextStyle,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
