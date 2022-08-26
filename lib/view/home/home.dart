import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/models/consult_domains_model.dart';
import '../../model/models/consultants_model.dart';
import '../app_data/app_colors.dart';
import '../app_data/app_strings.dart';
import '../app_data/app_text_style.dart';
import '../widgets/search_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = CarouselController();
  // final _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  double? _width, _height;
  int activeIndex = 0;
  List<Widget> images = [
    Image.asset("assets/images/c5.png"),
    Image.asset("assets/images/c2.png"),
    Image.asset("assets/images/c4.png"),
    Image.asset("assets/images/c5.png"),
    Image.asset("assets/images/c2.png"),
    Image.asset("assets/images/c4.png"),
  ];
  Widget buildWidget(context, images, index) {
    return images;
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: images.length,
      effect: ScaleEffect(
          dotWidth: 5,
          dotHeight: 5,
          // activeStrokeWidth: 2.5,
          // activePaintStyle: PaintingStyle.stroke,
          activeDotColor: AppColors.red,
          dotColor: AppColors.grey),
    );
  }

  @override
  void initState() {
    super.initState();
    // _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appGrey,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // SliverPersistentHeader(
            //   delegate: CustomSliverAppBarDelegate(expandedHeight: 200),
            //   pinned: true,
            // ),

            SliverAppBar(
              backgroundColor: AppColors.appGrey,
              expandedHeight: 80,
              collapsedHeight: 80,
              automaticallyImplyLeading: false,
              pinned: true,
              flexibleSpace: SearchWidget(),
            ),

            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider.builder(
                    itemCount: images.length,
                    carouselController: controller,
                    options: CarouselOptions(
                        height: 200,
                        viewportFraction: 1.0,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          // print(index);
                          // print("Active index" + activeIndex.toString());
                          setState(() {
                            activeIndex = index;
                          });
                          if (index != images.length - 1) {
                            // AppDialogs.openPinDialog(context);
                          }
                        }),
                    itemBuilder: (context, index, realIndex) {
                      Widget imageList = images[index];
                      return InkWell(
                          onTap: () {
                            if (activeIndex != images.length - 1) {}
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: buildWidget(context, imageList, index)));
                    },
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildIndicator(),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 110,
                width: _width,
                color: AppColors.white,
                child: ListView.builder(
                    itemCount: consultDomainData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 60,
                        margin: const EdgeInsets.all(10),
                        color: AppColors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              // margin: EdgeInsets.only(left: 5, right: 8),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    "assets/images/c4.png",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text(
                              consultDomainData[index]
                                  .consultDomainName
                                  .toString(),
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle
                                  .font14OpenSansRegularGreyTextStyle,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 2,
              ),
            ),

            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    Container(color: AppColors.white, height: 2),
                    Container(
                      height: 160,
                      color: AppColors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width! * 0.46,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 110,
                                  width: _width! * 0.40,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(30),
                                      child:
                                          Image.asset("assets/images/c2.png")),
                                ),
                                Container(
                                  padding: EdgeInsets.all(7),
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: AppColors.blue)),
                                  child: Text(
                                    AppStrings.txtNotRated,
                                    style: AppTextStyle
                                        .font14OpenSansBoldBlueTextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: _width! * 0.46,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "John Doe",
                                  style: AppTextStyle
                                      .font14OpenSansBoldBlackTextStyle,
                                ),
                                Text(
                                  "john@cm4",
                                  style:
                                      AppTextStyle.font16AsapAppGrayTextStyle,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  consultantsData[index]
                                      .consultDomainName
                                      .toString(),
                                  style: AppTextStyle
                                      .font14OpenSansBoldBlackTextStyle,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MaterialButton(
                                        onPressed: () {},
                                        height: 25,
                                        minWidth: 85,
                                        color:
                                            Color.fromARGB(255, 45, 247, 119),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: SizedBox(
                                          width: 15,
                                          height: 15,
                                          child: Image.asset(
                                              "assets/images/app_images/ic_call.png"),
                                        )),
                                    MaterialButton(
                                        onPressed: () {},
                                        height: 25,
                                        minWidth: 85,
                                        color:
                                            Color.fromARGB(255, 200, 57, 243),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: SizedBox(
                                          width: 15,
                                          height: 15,
                                          child: Image.asset(
                                              "assets/images/app_images/ic_video.png"),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("15/" + AppStrings.txtMin),
                                    Text("15/" + AppStrings.txtMin)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10,
                      color: AppColors.white,
                    ),
                    Container(
                      height: 2,
                    )
                  ],
                );
              },
              childCount: consultantsData.length,
            ))
          ],
        ),
      ),
    );
  }
}
