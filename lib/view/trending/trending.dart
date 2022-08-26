import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/providers/trending_consultants_provider.dart';
import '../app_data/app_colors.dart';
import '../app_data/app_text_style.dart';
import '../widgets/shimmer_effect.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  double? _width, _height;
  late TrendingConsultantsProvider trendingConsultantsProvider;

  @override
  void initState() {
    super.initState();
    trendingConsultantsProvider =
        Provider.of<TrendingConsultantsProvider>(context, listen: false);
    trendingConsultantsProvider.trendingConsultantsPostApi();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Consumer<TrendingConsultantsProvider>(
            builder: (context, provider, child) {
          // var trendingData = provider.trendingConsultantsPostApi();
          return SafeArea(
            child: Container(
              height: _height,
              color: AppColors.white,
              padding: EdgeInsets.only(top: 20),
              child: provider.list.isNotEmpty
                  ? ListView.separated(
                      itemCount: 8,
                      itemBuilder: (context, index) => const ShimmerEffect(),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                    )
                  : ListView.builder(
                      itemCount: provider.list.length,
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 160,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: _width! * 0.46,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 110,
                                          width: _width! * 0.40,
                                          margin: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: ClipRRect(
                                              // borderRadius: BorderRadius.circular(30),
                                              child: Image.network(provider
                                                  .list[index].profilePic)),
                                        ),
                                        Container(
                                          height: 40,
                                          // width: 120,
                                          padding: EdgeInsets.all(7),
                                          margin: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 45,
                                                width: 45,
                                                color: AppColors.green,
                                                child: Center(
                                                  child: Text(
                                                    double.parse(provider
                                                            .list[index]
                                                            .userRating)
                                                        .toStringAsFixed(1),
                                                    style: AppTextStyle
                                                        .font14OpenSansRegularWhiteTextStyle,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 45,
                                                // width: 100,
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                color: AppColors.green
                                                    .withOpacity(0.4),
                                                child: Center(
                                                  child: Text(
                                                    "Excellent",
                                                    style: AppTextStyle
                                                        .font14OpenSansSemiBoldGreenTextStyle,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: _width! * 0.46,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          provider.list[index].userName,
                                          style: AppTextStyle
                                              .font14OpenSansBoldBlackTextStyle,
                                        ),
                                        Text(
                                          provider.list[index].userSearchid,
                                          style: AppTextStyle
                                              .font16AsapAppGrayTextStyle,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          provider.list[index].services[0],
                                          style: AppTextStyle
                                              .font14OpenSansBoldBlackTextStyle,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            MaterialButton(
                                              onPressed: () {},
                                              height: 25,
                                              minWidth: 85,
                                              color: Color.fromARGB(
                                                  255, 45, 247, 119),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Icon(
                                                Icons.call_outlined,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                            MaterialButton(
                                              onPressed: () {},
                                              height: 25,
                                              minWidth: 85,
                                              color: Color.fromARGB(
                                                  255, 200, 57, 243),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Icon(
                                                Icons.video_call_outlined,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                                "${provider.list[index].perMinVal}/min"),
                                            Text(
                                                "${provider.list[index].videoperMinVal}/min")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            )
                          ],
                        );
                      }),
            ),
          );
        }));
  }

  String? ratingMark(double value) {
    String msg;
    if (value > 0 && value < 1) {
      msg = "Poor";
      return msg;
    } else if (value > 1 && value < 2) {
      msg = "Good";
      return msg;
    } else if (value > 2 && value < 3) {
      msg = "Average";
      return msg;
    } else if (value > 3 && value < 4) {
      msg = "Nice";
      return msg;
    } else if (value > 4 && value < 5) {
      msg = "Exellent";
      return msg;
    }
  }
}
