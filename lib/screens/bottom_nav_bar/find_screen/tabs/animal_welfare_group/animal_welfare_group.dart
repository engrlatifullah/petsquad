import 'package:flutter/material.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/animal_welfare_group/widget/animal_welfare_card.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/pet_store/pet_store_info/pet_store_info.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/pet_store/widget/pet_store_card.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_text.dart';
import '../../../../../themes/assets.dart';
import '../../widget/custom_check_box.dart';
import 'animal_welfare_group_info/animal_welfare_group_info.dart';

class AnimalWelfareGroup extends StatefulWidget {
  const AnimalWelfareGroup({Key? key}) : super(key: key);

  @override
  State<AnimalWelfareGroup> createState() => _AnimalWelfareGroupState();
}

class _AnimalWelfareGroupState extends State<AnimalWelfareGroup> {
  bool available = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomCheckBox(
            value: available,
            onChanged: (v) {
              setState(() {
                available = v!;
              });
            },
            title: AppText.available24x7,
          ),
        ),
        RoundCard(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2 ${AppText.animalWelfareGroup}",
                  style: AppStyle.semiBoldStyle
                      .copyWith(color: AppColors.primaryBlack, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                ...List.generate(
                  2,
                      (index) => InkWell(
                      onTap: () {
                        AppUtils.navigateToPage(
                          context,
                          const AnimalWelfareGroupInfo(
                              image: AppImages.animalWelfare,
                              name: "asha animal welfare"),
                        );
                      },
                      child: const AnimalWelfareCard()),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
