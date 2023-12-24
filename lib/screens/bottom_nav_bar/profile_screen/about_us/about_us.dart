import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../../themes/assets.dart';
import '../../../../widget/custom_input.dart';
import '../../../../widget/primary_button.dart';
import '../../../../widget/custom_text.dart';

class AboutUS extends StatelessWidget {
  const AboutUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            CustomAppBar(title: AppText.aboutUs),
            RoundCard(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: SvgPicture.asset(AppIcons.ourMission)),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          AppText.ourMission,
                          style: AppStyle.semiBoldStyle.copyWith(
                              color: AppColors.primaryBlack, fontSize: 26),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
                          textAlign: TextAlign.center,style: AppStyle.regularStyle.copyWith(
                              color: AppColors.primaryLightGrey, fontSize: 14),
                        ),
                      ),
                      SizedBox(height: 20),

                      Text(
                        AppText.firstName,style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryBlack,fontSize: 15),
                      ),
                      const SizedBox(height: 10),

                      const CustomInput(
                        hintText: AppText.firstName,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        AppText.lastName,style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryBlack,fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      const CustomInput(
                        hintText: AppText.lastName,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        AppText.subject,style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryBlack,fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      const CustomInput(
                        hintText: AppText.subject,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        AppText.description,style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryBlack,fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      const CustomInput(
                        hintText: AppText.description,
                        maxLines: 5,
                      ),
                      const SizedBox(height: 20),
                      PrimaryButton(
                        title: AppText.submit,
                        onTap: (){},
                      ),
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
