import 'package:b4/view/profile/report_and_block.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import '../app_data/app_colors.dart';
import '../app_data/app_strings.dart';
import '../app_data/app_text_style.dart';
import 'bookmarks.dart';
import 'help.dart';
import 'share_your_card.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController categoryController = TextEditingController();
  double? _width, _height;
  final controller = CarouselController();
  // final _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  int activeIndex = 0;
  bool _switchValue = false;
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
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Text(
              AppStrings.txtVideoCall,
              style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
            ),
          ),
          SizedBox(
            height: 20,
            width: 60,
            child: Switch(
              value: _switchValue,
              activeColor: AppColors.red,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            // height: _height! * 0.80,
            width: _width,
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(50)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child:
                                      Image.asset("assets/icons/profile.png"))),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: AppColors.red,
                                    borderRadius: BorderRadius.circular(17.5)),
                                child: Icon(
                                  Icons.camera_alt_rounded,
                                  color: AppColors.white,
                                  size: 20,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Manish Prakash",
                            style: AppTextStyle
                                .font18OpenSansSemiBoldBlackTextStyle,
                          ),
                          Text("mprakash1@cm4"),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 45, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.red,
                      ),
                      Text(
                        " 0.0",
                        style: AppTextStyle.font14OpenSansBoldBlackTextStyle,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _height! * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const ShareYourCard())));
                  },
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        // color: AppColors.blue,
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.txtBecomeConsultant,
                          style: AppTextStyle.font14AsapRegularGreyTextStyle,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: AppColors.red,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 5,
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  color: AppColors.red.withOpacity(0.1),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppStrings.txtRegisteredMobileNo),
                      Icon(
                        Icons.edit,
                        color: AppColors.red,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("+91 8210710217"),
                    ],
                  ),
                ),
                Container(
                  height: 5,
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  color: AppColors.red.withOpacity(0.1),
                ),
                ListTile(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: ((context) => Bookmarks())));
                    },
                    title: Text(AppStrings.txtSaveCallMe4NosInYourContactList),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: AppColors.red,
                    )),
                Divider(
                  height: 1,
                ),
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Bookmarks())));
                    },
                    title: Text(AppStrings.txtBookmarks),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: AppColors.red,
                    )),
                Divider(
                  height: 1,
                ),
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ReportAndBlocks())));
                    },
                    title: Text(AppStrings.txtReportsBlocks),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: AppColors.red,
                    )),
                Divider(
                  height: 1,
                ),
                ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Help())));
                    },
                    title: Text(AppStrings.txtHelp),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: AppColors.red,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
