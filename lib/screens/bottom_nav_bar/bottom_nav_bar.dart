import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/globel.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryBlack,
        unselectedItemColor: AppColors.primaryLightGrey,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.home,
                color: currentIndex == 0
                    ? AppColors.primaryYellow
                    : AppColors.primaryLightGrey,
              ),
              label: AppText.home),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.scan,
                color: currentIndex == 1
                    ? AppColors.primaryYellow
                    : AppColors.primaryLightGrey,
              ),
              label: AppText.scan),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.find,
                color: currentIndex == 2
                    ? AppColors.primaryYellow
                    : AppColors.primaryLightGrey,
              ),
              label: AppText.find),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.profile,
                color: currentIndex == 3
                    ? AppColors.primaryYellow
                    : AppColors.primaryLightGrey,
              ),
              label: AppText.profile),
        ],
      ),
    );
  }
}
