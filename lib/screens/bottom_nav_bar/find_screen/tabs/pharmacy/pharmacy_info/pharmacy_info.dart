import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/round_card.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_style.dart';
import '../../../../widget/custom_list_tile.dart';

class PharmacyInfo extends StatelessWidget {
  final String image;
  final String name;

  const PharmacyInfo({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            const CustomAppBar(title: AppText.vetOrClinicInformation),
            RoundCard(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      SizedBox(
                        height: AppUtils.getHeight(context, 0.4),
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        name,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: AppColors.primaryBlack, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      const CustomListTile(
                        title: AppText.phoneNumber,
                        subTitle: "+91 00 356 903",
                        icon: AppIcons.phone,
                      ),
                      const SizedBox(height: 20),
                      const CustomListTile(
                        title: AppText.timings,
                        subTitle: "Mon-Fri | 12:00am - 01:30 pm",
                        icon: AppIcons.calendar,
                      ),
                      const SizedBox(height: 20),
                      const CustomListTile(
                        title: AppText.address,
                        subTitle: " Road 02, Ahmedabad India",
                        icon: AppIcons.location,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppText.about,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: AppColors.primaryBlack, fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      ReadMoreText(
                        "dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.. ",
                        trimLines: 2,
                        colorClickableText: AppColors.primaryYellow,
                        trimCollapsedText: AppText.readMore,
                        trimExpandedText: AppText.showLess,trimMode: TrimMode.Line,
                        moreStyle: AppStyle.regularStyle.copyWith(color:  AppColors.primaryYellow,fontSize: 14),
                        lessStyle: AppStyle.regularStyle.copyWith(color:  AppColors.primaryYellow,fontSize: 14),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppText.location,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: AppColors.primaryBlack, fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: AppUtils.getHeight(context, 0.3),
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.asset(
                            AppImages.map,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),



                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
