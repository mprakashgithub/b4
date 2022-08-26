import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/providers/bookmark_provider.dart';
import '../app_data/app_colors.dart';
import '../app_data/app_text_style.dart';

class Bookmarks extends StatefulWidget {
  const Bookmarks({Key? key}) : super(key: key);

  @override
  State<Bookmarks> createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
  TextEditingController categoryController = TextEditingController();
  double? _width, _height;
  bool isDataLoaded = true;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          "Bookmarks",
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
      body: isDataLoaded
          ? Consumer<BookmarkProvider>(
              builder: (context, provider, child) {
                return Container(
                  height: _height,
                  color: AppColors.white,
                  padding: EdgeInsets.only(top: 10),
                  child: ListView.builder(
                      itemCount: 20,
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ListTile(
                              leading: SizedBox(
                                height: 50,
                                width: 50,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                        "assets/images/app_images/us_cm_logo_info.png")),
                              ),
                              title: Text("mprakash1@cm4"),
                              trailing: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/app_images/us_bookmark_red.png"),
                              )),
                        );
                      }),
                );
              },
            )
          : Container(
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
                      child: Image.asset(
                          "assets/images/app_images/us_no_data.png")),
                  Text(
                    "Oops!",
                    style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
                  ),
                  Text(
                    "Seems you have not bookmarked anyone",
                    style: AppTextStyle.font12OpenSansRegularBlackTextStyle,
                  )
                ],
              ),
            ),
    );
  }
}
