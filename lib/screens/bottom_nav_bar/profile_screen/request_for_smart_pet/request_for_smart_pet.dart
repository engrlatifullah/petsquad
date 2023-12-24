import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:petsquad/screens/bottom_nav_bar/profile_screen/request_for_smart_pet/thank_you.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/custom_text.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/primary_button.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../../themes/app_colors.dart';
import '../../../../utils/globel.dart';
import '../../../../widget/custom_input.dart';
import '../../../../widget/custom_country_picker.dart';

class RequestForSmartPet extends StatefulWidget {
  const RequestForSmartPet({Key? key}) : super(key: key);

  @override
  State<RequestForSmartPet> createState() => _RequestForSmartPetState();
}

class _RequestForSmartPetState extends State<RequestForSmartPet> {

  String ? countryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            CustomAppBar(title: AppText.requestSmartPet),
            RoundCard(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(title: AppText.noOfTags),
                      SizedBox(height: 10),

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
                            icon: Icon(Icons.arrow_drop_down,color: AppColors.primaryBlack.withOpacity(0.5),),
                            hint: const Text(AppText.noOfTags),
                            value: noOfTags,
                            items: tags.map((String e) {
                              return DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              );
                            }).toList(),
                            onChanged: (v){
                              setState(() {
                                noOfTags = v;
                              });
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),
                      const CustomText(
                        title: AppText.address,
                      ),
                      const SizedBox(height: 10),
                      const CustomInput(
                        hintText: "32 Park street ahemedabad",

                      ),
                      const SizedBox(height: 16),
                      const CustomText(
                        title: AppText.city,
                      ),
                      const SizedBox(height: 10),
                      const CustomInput(
                        hintText: "ahmedabad",
                      ),
                      const SizedBox(height: 16),
                      const CustomText(
                        title: AppText.state,
                      ),
                      const SizedBox(height: 10),
                      CustomCountryPicker(
                        title: countryName,
                        onSelect: (Country country) {
                          setState(() {
                            countryName = country.name;
                          });
                        },),
                      const SizedBox(height: 16),
                      const CustomText(
                        title: AppText.pinCode,
                      ),
                      const SizedBox(height: 10),
                      const CustomInput(
                        hintText: "382120",
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      const CustomText(
                        title: AppText.phoneNumber,
                      ),
                      const SizedBox(height: 10),
                      const CustomInput(
                        hintText: "9856856952",
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      PrimaryButton(title: AppText.placeRequest,onTap: (){
                        AppUtils.navigateToPage(context, const ThankYou());
                      },)


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
