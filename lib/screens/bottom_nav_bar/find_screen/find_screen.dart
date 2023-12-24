import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/widget/background_container.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_style.dart';
import '../../../themes/assets.dart';
import '../../../utils/globel.dart';

class FindScreen extends StatefulWidget {
  const FindScreen({Key? key}) : super(key: key);

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppText.find,
                style: AppStyle.boldStyle.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: AppText.search,
                    filled: true,
                    fillColor: AppColors.primaryWhite,
                    suffixIcon: Icon(
                      Icons.search,
                      color: AppColors.primaryBlack.withOpacity(0.5),
                    ),
                    hintStyle: AppStyle.regularStyle.copyWith(
                      fontSize: 13,
                      color: AppColors.primaryBlack.withOpacity(0.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: AppColors.primaryBorder),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 0;
                      });
                    },
                    child: Chip(
                      label: Text(
                        AppText.vetOrClinic,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: tabIndex == 0
                                ? AppColors.primaryBlack
                                : AppColors.primaryWhite,
                            fontSize: 14),
                      ),
                      side: BorderSide(
                        color: tabIndex == 0
                            ? AppColors.primaryTransparent
                            : AppColors.primaryWhite,
                      ),
                      backgroundColor: tabIndex == 0
                          ? AppColors.primaryYellow
                          : AppColors.primaryBackground,
                      padding: EdgeInsets.all(9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 1;
                      });
                    },
                    child: Chip(
                      label: Text(
                        AppText.pharmacy,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: tabIndex == 1
                                ? AppColors.primaryBlack
                                : AppColors.primaryWhite,
                            fontSize: 14),
                      ),
                      side: BorderSide(
                        color: tabIndex == 1
                            ? AppColors.primaryTransparent
                            : AppColors.primaryWhite,
                      ),
                      backgroundColor: tabIndex == 1
                          ? AppColors.primaryYellow
                          : AppColors.primaryBackground,
                      elevation: 0,
                      padding: EdgeInsets.all(9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 2;
                      });
                    },
                    child: Chip(
                      label: Text(
                        AppText.petStore,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: tabIndex == 2
                                ? AppColors.primaryBlack
                                : AppColors.primaryWhite,
                            fontSize: 14),
                      ),
                      side: BorderSide(
                        color: tabIndex == 2
                            ? AppColors.primaryTransparent
                            : AppColors.primaryWhite,
                      ),
                      backgroundColor: tabIndex == 2
                          ? AppColors.primaryYellow
                          : AppColors.primaryBackground,
                      elevation: 0,
                      padding: EdgeInsets.all(9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 3;
                      });
                    },
                    child: Chip(
                      label: Text(
                        AppText.animalWelfareGroup,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: tabIndex == 3
                                ? AppColors.primaryBlack
                                : AppColors.primaryWhite,
                            fontSize: 14),
                      ),
                      side: BorderSide(
                        color: tabIndex == 3
                            ? AppColors.primaryTransparent
                            : AppColors.primaryWhite,
                      ),
                      backgroundColor: tabIndex == 3
                          ? AppColors.primaryYellow
                          : AppColors.primaryBackground,
                      elevation: 0,
                      padding: const EdgeInsets.all(9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(child: tabPages[tabIndex])
      ],
    ));
  }
}
