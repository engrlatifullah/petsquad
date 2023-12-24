import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/screens/bottom_nav_bar/widget/custom_list_tile.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/primary_button.dart';
import 'package:petsquad/widget/round_card.dart';
import 'package:readmore/readmore.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_style.dart';
import '../../../../themes/app_text.dart';
import '../../../../utils/app_utils.dart';
import 'attach_smartpet/attach_smartpet.dart';
import 'edit_pet_profile/edit_pet_profile.dart';

class PetProfile extends StatelessWidget {
  const PetProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            Row(
              children: [
                const CustomAppBar(title: AppText.petProfile),
                const Spacer(),
                InkWell(
                  onTap: (){
                    AppUtils.navigateToPage(context, const EditPetProfile());
                  },
                  child: const Icon(
                    Icons.edit,
                    color: AppColors.primaryWhite,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            RoundCard(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: AppUtils.getHeight(context, 0.3),
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          AppImages.dobarman,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Expanded(
                          child: CustomListTile(
                              title: AppText.petName,
                              subTitle: "Dorimon Dog",
                              icon: AppIcons.petName),
                        ),
                        Expanded(
                          child: CustomListTile(
                              title: AppText.petAge,
                              subTitle: "26",
                              icon: AppIcons.petAge),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Expanded(
                          child: CustomListTile(
                              title: AppText.petCategory,
                              subTitle: "dog",
                              icon: AppIcons.petCategory),
                        ),
                        Expanded(
                          child: CustomListTile(
                              title: AppText.petGender,
                              subTitle: "Male",
                              icon: AppIcons.petGender),
                        ),
                      ],
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
                    const Spacer(),
                    PrimaryButton(
                      onTap: (){
                        AppUtils.navigateToPage(context, const AttachSmartPet());
                      },
                      title: AppText.attachSmartPet,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
