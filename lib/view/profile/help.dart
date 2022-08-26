import 'package:flutter/material.dart';

import '../app_data/app_colors.dart';
import '../app_data/app_strings.dart';
import '../app_data/app_text_style.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
        title: Text.rich(
          TextSpan(
              text: AppStrings.appName,
              style: AppTextStyle.font14OpenSansRegularRedTextStyle,
              children: <InlineSpan>[
                TextSpan(
                  text: " " + AppStrings.txtGetHelp,
                  style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
                ),
              ]),
        ),
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
      body: SingleChildScrollView(
        child: Container(
          height: _height! * 0.70,
          width: _width,
          color: AppColors.backgroundColor,
          // padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(
                          top: 15, bottom: 15, left: 20, right: 15),
                      decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(25)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                              "assets/images/app_images/us_cm_logo_info.png"))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.appName,
                        style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
                      ),
                      Text(
                        "V 1.0.0",
                        style: AppTextStyle.font12OpenSansRegularGreyTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    ListTile(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: ((context) => Help())));
                        },
                        title: Text("Feedback/Query"),
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
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: ((context) => Help())));
                      },
                      title: Text("About CallMe4"),
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: ((context) => Help())));
                      },
                      title: Text("Privacy Policy"),
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: ((context) => Help())));
                      },
                      title: Text("Terms & Conditions"),
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: ((context) => Help())));
                      },
                      title: Text("Refund Money"),
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: ((context) => Help())));
                      },
                      title: Text("Contact us"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
