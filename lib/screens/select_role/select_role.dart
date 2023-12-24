// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:petsquad/screens/select_role/sub_screens/animal_lover.dart';
// import 'package:petsquad/screens/select_role/sub_screens/animal_welfare_group.dart';
// import 'package:petsquad/screens/select_role/sub_screens/parmacy_screen.dart';
// import 'package:petsquad/screens/select_role/sub_screens/pet_owner.dart';
// import 'package:petsquad/screens/select_role/sub_screens/pet_store_screen.dart';
// import 'package:petsquad/screens/select_role/sub_screens/vit_role.dart';
// import 'package:petsquad/widget/round_card.dart';
// import 'package:petsquad/themes/app_colors.dart';
// import 'package:petsquad/themes/app_text.dart';
// import 'package:petsquad/themes/assets.dart';
// import 'package:petsquad/utils/app_utils.dart';
// import 'package:petsquad/utils/globel.dart';
// import 'package:petsquad/widget/background_container.dart';
//
// import '../../themes/app_style.dart';
// import '../../widget/custom_app_bar.dart';
//
// class SelectRole extends StatelessWidget {
//   const SelectRole({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BackgroundContainer(
//         child: Column(
//           children: [
//             const CustomAppBar(title: AppText.whoAmI,),
//             RoundCard(child: GridView.builder(
//               padding: const EdgeInsets.all(20),
//               itemCount: roleData.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10), itemBuilder: (BuildContext context, int index) {
//                 final data = roleData[index];
//                 return InkWell(
//                   onTap: (){
//                     AppUtils.navigateToPage(context,  index == 0 ? const AnimalLover() : index == 1 ? const PetOwner() : index == 2 ? const VitRole() : index == 3 ? const PharmacyScreen() : index == 4 ? const AnimalWelfareGroup() : const PetStore());
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(18),
//                       color: data.color,
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SvgPicture.asset(data.icon.toString()),
//                         const SizedBox(height: 10),
//                         Text(data.title.toString(),textAlign: TextAlign.center,style: AppStyle.semiBoldStyle.copyWith(fontSize: 16,color: AppColors.primaryBlack),),
//                       ],
//                     ),
//                   ),
//                 );
//               },),),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petsquad/screens/select_role/sub_screens/animal_lover.dart';
import 'package:petsquad/screens/select_role/sub_screens/animal_welfare_group.dart';
import 'package:petsquad/screens/select_role/sub_screens/parmacy_screen.dart';
import 'package:petsquad/screens/select_role/sub_screens/pet_owner.dart';
import 'package:petsquad/screens/select_role/sub_screens/pet_store_screen.dart';
import 'package:petsquad/screens/select_role/sub_screens/vit_role.dart';
import 'package:petsquad/widget/round_card.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/utils/globel.dart';
import 'package:petsquad/widget/background_container.dart';

import '../../themes/app_style.dart';
import '../../widget/custom_app_bar.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            const CustomAppBar(
              title: AppText.whoAmI,
            ),
            RoundCard(
                child: ListView.builder(
              itemCount: roleData.length,
              padding: const EdgeInsets.all(20),
              itemBuilder: (BuildContext context, int index) {
                final data = roleData[index];
                return InkWell(
                  onTap: () {
                    AppUtils.navigateToPage(
                      context,
                      index == 0
                          ? const PetOwner()
                          : index == 1
                              ? const VitRole()
                              : index == 2
                                  ? const PharmacyScreen()
                                  : index == 3
                                      ? const AnimalWelfareGroup()
                                      : const PetStore(),
                    );
                  },
                  child: Container(
                    height: AppUtils.getHeight(context, 0.15),
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: data.color,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(data.icon.toString()),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data.title.toString(),
                                style: AppStyle.semiBoldStyle.copyWith(
                                    fontSize: 16,
                                    color: AppColors.primaryBlack),
                              ),
                              Text(
                                "Lorem ipsum is a  dummy text dummy text",
                                textAlign: TextAlign.center,
                                style: AppStyle.regularStyle.copyWith(
                                    fontSize: 12,
                                    color: AppColors.primaryLightGrey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
