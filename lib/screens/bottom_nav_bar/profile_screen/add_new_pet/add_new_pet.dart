import 'package:flutter/material.dart';
import 'package:petsquad/screens/bottom_nav_bar/home_screen/success_screen/success_screen.dart';
import 'package:petsquad/screens/bottom_nav_bar/profile_screen/add_new_pet/success_screen/sucess_screen.dart';
import 'package:petsquad/screens/bottom_nav_bar/profile_screen/add_new_pet/widget/custom_drop_down.dart';
import 'package:petsquad/widget/custom_text.dart';
import 'package:petsquad/screens/select_role/sub_screens/widget/upload_widget.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/primary_button.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_text.dart';
import '../../../../utils/globel.dart';
import '../../../../widget/custom_input.dart';

class AddNewPet extends StatefulWidget {
  const AddNewPet({Key? key}) : super(key: key);

  @override
  State<AddNewPet> createState() => _AddNewPetState();
}

class _AddNewPetState extends State<AddNewPet> {


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            const CustomAppBar(title: AppText.addNewPet),
            RoundCard(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(title: AppText.petName),
                      const SizedBox(height: 10),
                      const CustomInput(
                        hintText: AppText.petName,
                      ),
                      const SizedBox(height: 16),

                      const CustomText(title: AppText.petCategory),
                      const SizedBox(height: 10),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: AppColors.primaryBorder),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: const Text(AppText.petCategory),
                            value: cate,
                            items: petCategories.map(( e) {
                              return DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              );
                            }).toList(),
                            onChanged: (v){
                              setState(() {
                                cate = v;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      const CustomText(title: AppText.petBreed),
                      const SizedBox(height: 10),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: AppColors.primaryBorder),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: const Text(AppText.petBreed),
                            value: breeds,
                            items: petsBreed.map((String e) {
                              return DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              );
                            }).toList(),
                            onChanged: (v){
                              setState(() {
                                breeds = v;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      const CustomText(title: AppText.petAge),
                      const SizedBox(height: 10),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: AppColors.primaryBorder),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: const Text(AppText.petAge),
                            value: age,
                            items: petsAge.map((String e) {
                              return DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              );
                            }).toList(),
                            onChanged: (v){
                              setState(() {
                                age = v;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      const CustomText(title: AppText.petGender),
                      const SizedBox(height: 10),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: AppColors.primaryBorder),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: const Text(AppText.petGender),
                            value: gender,
                            items: petsGender.map((String e) {
                              return DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              );
                            }).toList(),
                            onChanged: (v){
                              setState(() {
                                gender = v;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const CustomText(title: AppText.briefDescriptionOfPet),
                      const SizedBox(height: 10),
                      CustomInput(
                        hintText: AppText.briefDescriptionOfPet,
                      ),
                      const SizedBox(height: 16),
                      const UploadWidget(title: AppText.uploadStorePicture,),
                      const SizedBox(height: 16),
                      const UploadWidget(title: AppText.addSmartPet,image: AppIcons.smart),
                      const SizedBox(height: 16),

                      PrimaryButton(
                        title: AppText.submit,
                        onTap: (){
                          AppUtils.navigateToPage(context, const SuccessfullyScreen());
                        },
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
