import 'package:flutter/material.dart';
import 'package:petsquad/screens/bottom_nav_bar/profile_screen/pet_profile/pet_profile.dart';
import 'package:petsquad/screens/bottom_nav_bar/profile_screen/request_for_smart_pet/request_for_smart_pet.dart';
import 'package:petsquad/screens/bottom_nav_bar/profile_screen/widget/pets_card.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/primary_button.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../themes/app_style.dart';
import '../../../themes/assets.dart';
import '../widget/custom_list_tile.dart';
import 'about_us/about_us.dart';
import 'add_new_pet/add_new_pet.dart';
import 'edit_profile_screen/edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppText.userProfile,
                    style: AppStyle.semiBoldStyle.copyWith(fontSize: 20),
                  ),
                  InkWell(
                    onTap: (){
                      AppUtils.navigateToPage(context, const EditProfileScreen());
                    },
                    child: const Icon(
                      Icons.edit,
                      color: AppColors.primaryWhite,
                    ),
                  )
                ],
              ),
            ),
            RoundCard(
              isPic: true,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color:
                                AppColors.primaryBackground.withOpacity(0.50),
                          ),
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(AppImages.profilePic),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Kaylee yang",
                        style: AppStyle.boldStyle.copyWith(
                            color: AppColors.primaryBlack, fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "+91 90290 90076",
                        style: AppStyle.regularStyle.copyWith(
                            color: AppColors.primaryLightGrey, fontSize: 16),
                      ),
                      const SizedBox(height: 25),
                      const CustomListTile(
                        title: AppText.address,
                        subTitle: " Road 02, Ahmedabad India",
                        icon: AppIcons.location,
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppText.myPets,
                            style: AppStyle.semiBoldStyle.copyWith(
                                color: AppColors.primaryBlack, fontSize: 18),
                          ),
                          InkWell(
                            onTap: () {
                              AppUtils.navigateToPage(
                                  context, const AddNewPet());
                            },
                            child: Text(
                              AppText.addNew,
                              style: AppStyle.semiBoldStyle.copyWith(
                                  color: AppColors.primaryBackground,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      PetsCard(
                        onTap: () {
                          AppUtils.navigateToPage(context, const PetProfile());
                        },
                        title: "Dobarman",
                        image: AppImages.dobarman,
                      ),
                      const SizedBox(height: 15),
                      const PetsCard(
                        title: "Persian",
                        image: AppImages.cat,
                      ),
                      const SizedBox(height: 15),
                      PrimaryButton(
                        title: AppText.requestSmartPet,
                        onTap: (){
                          AppUtils.navigateToPage(context, const RequestForSmartPet());
                        },
                      ),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          AppUtils.navigateToPage(context, const AboutUS());
                        },
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: AppColors.primaryBorder),
                          ),
                          child: Text(
                            AppText.aboutUs,
                            style: AppStyle.semiBoldStyle.copyWith(
                                color: AppColors.primaryBlack, fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.primaryDarkRed,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Center(
                              child: Text(
                            AppText.logOut,
                            style: AppStyle.semiBoldStyle.copyWith(
                                color: AppColors.primaryWhite, fontSize: 16),
                          )),
                        ),
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
