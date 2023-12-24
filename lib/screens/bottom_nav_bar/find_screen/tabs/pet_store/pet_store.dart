import 'package:flutter/material.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/pet_store/pet_store_info/pet_store_info.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/pet_store/widget/pet_store_card.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/pharmacy/pharmacy_info/pharmacy_info.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/pharmacy/widget/pharmacy_card.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/vet_or_clinic/vet_info/vet_info.dart';
import 'package:petsquad/screens/bottom_nav_bar/find_screen/tabs/vet_or_clinic/widget/doctor_card.dart';
import 'package:petsquad/screens/select_role/sub_screens/widget/custom_checkbox_listtile.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_text.dart';
import '../../../../../themes/assets.dart';
import '../../widget/custom_check_box.dart';

class PetStore extends StatefulWidget {
  const PetStore({Key? key}) : super(key: key);

  @override
  State<PetStore> createState() => _PetStoreState();
}

class _PetStoreState extends State<PetStore> {
  bool available = false;
  bool homeDeleviry = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CustomCheckBox(
                value: available,
                onChanged: (v) {
                  setState(() {
                    available = v!;
                  });
                },
                title: AppText.available24x7,
              ),
              SizedBox(width: 10),
              CustomCheckBox(
                value: homeDeleviry,
                onChanged: (v) {
                  setState(() {
                    homeDeleviry = v!;
                  });
                },
                title: AppText.homeDelivery,
              ),
            ],
          ),
        ),
        RoundCard(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2 ${AppText.petStoresFound}",
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
                          const PetStoreInfo(
                              image: AppImages.petStore,
                              name: "the city pet shop"),
                        );
                      },
                      child: const PetCard()),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
