import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text.dart';

class CustomCountryPicker extends StatelessWidget {
  final Function(Country country) onSelect;
  final String ? title;
  const CustomCountryPicker({Key? key, required this.onSelect, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showCountryPicker(
          context: context,
          showPhoneCode: false,

          onSelect: onSelect,
        );
      },
      child:  Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.primaryBorder),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title ?? AppText.state),
            Icon(Icons.arrow_drop_down,color: AppColors.primaryBlack.withOpacity(0.5),)
          ],
        ),
      ),
    );
  }
}
