import 'package:flutter/material.dart';

import '../app_data/app_colors.dart';
import '../app_data/app_text_style.dart';

class ReportAndBlocks extends StatefulWidget {
  const ReportAndBlocks({Key? key}) : super(key: key);

  @override
  State<ReportAndBlocks> createState() => _ReportAndBlocksState();
}

class _ReportAndBlocksState extends State<ReportAndBlocks> {
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
          "Report & Blocks",
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
          height: _height! * 0.70,
          width: _width,
          color: AppColors.backgroundColor,
          // padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(top: 100),
                  child:
                      Image.asset("assets/images/app_images/us_no_data.png")),
              Text(
                "Oops!",
                style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
              ),
              Text(
                "No Data Found",
                style: AppTextStyle.font12OpenSansRegularBlackTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
