import 'package:flutter/material.dart';

import '../app_data/app_colors.dart';
import '../app_data/app_strings.dart';
import '../home/home.dart';
import '../profile/profile.dart';
import '../trending/trending.dart';
import '../wallet/wallet.dart';

class BottomNavRouter extends StatefulWidget {
  const BottomNavRouter({Key? key}) : super(key: key);

  @override
  _BottomNavRouterState createState() => _BottomNavRouterState();
}

class _BottomNavRouterState extends State<BottomNavRouter> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    const Home(),
    const Trending(),
    const Wallet(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageList[pageIndex],
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.redAccent[400],
            currentIndex: pageIndex,
            onTap: (value) {
              setState(() {
                pageIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  activeIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/app_images/home_grey.png",
                      color: AppColors.red,
                      fit: BoxFit.contain,
                    ),
                  ),
                  icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/app_images/home_grey.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  label: AppStrings.txtHome),
              BottomNavigationBarItem(
                  activeIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/app_images/trending.png",
                      color: AppColors.red,
                      fit: BoxFit.contain,
                    ),
                  ),
                  icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/app_images/trending.png",
                      color: AppColors.grey,
                      fit: BoxFit.contain,
                    ),
                  ),
                  label: AppStrings.txtTrending),
              BottomNavigationBarItem(
                  activeIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/app_images/wallet_grey.png",
                      color: AppColors.red,
                      fit: BoxFit.contain,
                    ),
                  ),
                  icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/app_images/wallet_grey.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  label: AppStrings.txtWallet),
              BottomNavigationBarItem(
                  activeIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/app_images/accounts_grey.png",
                      color: AppColors.red,
                      fit: BoxFit.contain,
                    ),
                  ),
                  icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/app_images/accounts_grey.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  label: AppStrings.txtProfile),
            ]));
  }
}
