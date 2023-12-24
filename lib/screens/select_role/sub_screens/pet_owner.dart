import 'package:country_picker/country_picker.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:petsquad/screens/select_role/sub_screens/registeration_don.dart';
import 'package:petsquad/screens/select_role/sub_screens/widget/custom_checkbox_listtile.dart';
import 'package:petsquad/widget/custom_country_picker.dart';
import 'package:petsquad/widget/custom_text.dart';
import 'package:petsquad/screens/select_role/sub_screens/widget/upload_widget.dart';
import 'package:petsquad/widget/round_card.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/primary_button.dart';

import '../../../themes/app_colors.dart';
import '../../../utils/app_utils.dart';
import '../../../utils/globel.dart';
import '../../../widget/custom_date_picker.dart';
import '../../../widget/custom_input.dart';

class PetOwner extends StatefulWidget {
  const PetOwner({Key? key}) : super(key: key);

  @override
  State<PetOwner> createState() => _PetOwnerState();
}

class _PetOwnerState extends State<PetOwner> {
  bool checkValue = false;
  String? countryName;
  String? selectedGender;
  String ? selectedDay;
  String ? selectedMonth;
  String ? selectedYear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: Column(
        children: [
          const CustomAppBar(title: "enter your details"),
          RoundCard(
            isPic: true,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      title: AppText.firstName,
                    ),
                    const SizedBox(height: 10),
                    const CustomInput(
                      hintText: AppText.firstName,
                    ),
                    const SizedBox(height: 16),
                    const CustomText(
                      title: AppText.lastName,
                    ),
                    const SizedBox(height: 10),
                    const CustomInput(
                      hintText: AppText.lastName,
                    ),
                    const SizedBox(height: 16),
                    const CustomText(
                      title: AppText.gender,
                    ),
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
                          borderRadius: BorderRadius.circular(18),
                          isExpanded: true,
                          hint: const Text(AppText.gender),
                          value: selectedGender,
                          items: petsGender.map((String e) {
                            return DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            );
                          }).toList(),
                          onChanged: (v) {
                            setState(() {
                              selectedGender = v;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const CustomText(
                      title: AppText.dob,
                    ),
                    const SizedBox(height: 10),
                    CustomDatePicker(
                      onChangedDay: (v){
                        setState(() {
                          selectedDay = v;
                        });
                      },
                      onChangedMonth: (v){
                        setState(() {
                          selectedMonth = v;
                        });
                      },
                      onChangedYear: (v){
                        setState(() {
                          selectedYear = v;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    const CustomText(
                      title: AppText.address,
                    ),
                    const SizedBox(height: 10),
                    const CustomInput(
                      hintText: AppText.address,
                    ),
                    const SizedBox(height: 16),
                    const CustomText(
                      title: AppText.city,
                    ),
                    const SizedBox(height: 10),
                    const CustomInput(
                      hintText: AppText.city,
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
                      },
                    ),
                    const SizedBox(height: 16),
                    const CustomText(
                      title: AppText.pinCode,
                    ),
                    const SizedBox(height: 10),
                    const CustomInput(
                      hintText: AppText.pinCode,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16),
                    UploadWidget(
                      onTap: () {},
                      title: AppText.uploadProfilePicture,
                    ),
                    const SizedBox(height: 16),
                    UploadWidget(
                      onTap: () {},
                      title: AppText.uploadValidIDProof,
                    ),
                    const SizedBox(height: 16),
                    CustomCheckBoxListTile(
                      value: checkValue,
                      isTerm: true,
                      onChanged: (bool? v) {
                        setState(() {
                          checkValue = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    PrimaryButton(
                      title: AppText.submit,
                      onTap: () {
                        AppUtils.navigateToPage(
                            context, const RegistrationDone());
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}


