import 'package:flutter/material.dart';
import 'package:petsquad/screens/select_role/sub_screens/terms_and_condition.dart';
import 'package:petsquad/utils/app_utils.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_style.dart';
import '../../../../themes/app_text.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final String  title;
  final Function(bool ? v) onChanged;
  const CustomCheckBox({Key? key, required this.value, required this.onChanged, required this.title,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: Checkbox(
            value: value,
            shape: const CircleBorder(
            ),
            checkColor: AppColors.primaryBlack,
            activeColor: AppColors.primaryYellow,side: BorderSide(
              color: AppColors.primaryWhite
          ),
            onChanged: onChanged,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: AppStyle.mediumStyle
              .copyWith(color: AppColors.primaryWhite,),
        ),
      ],
    );
  }
}
