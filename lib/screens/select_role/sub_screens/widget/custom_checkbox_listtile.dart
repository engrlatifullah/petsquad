import 'package:flutter/material.dart';
import 'package:petsquad/screens/select_role/sub_screens/terms_and_condition.dart';
import 'package:petsquad/utils/app_utils.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_style.dart';
import '../../../../themes/app_text.dart';

class CustomCheckBoxListTile extends StatelessWidget {
  final bool value;
  final String ? title;
  final bool isTerm;
  final Function(bool ? v) onChanged;
  const CustomCheckBoxListTile({Key? key, required this.value, required this.onChanged, this.title,  this.isTerm = false}) : super(key: key);

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
              activeColor: AppColors.primaryBackground,side: BorderSide(
              color: AppColors.primaryBlack.withOpacity(0.5)
          ),
              onChanged: onChanged,
          ),
        ),
        const SizedBox(width: 10),
        isTerm ? Row(
          children: [
            Text(
              AppText.iAccept,
              style: AppStyle.mediumStyle
                  .copyWith(color: AppColors.primaryBlack),
            ),
            InkWell(
              onTap: (){
                AppUtils.navigateToPage(context, const TermsAndCondition());
              },
              child: Text(
                AppText.termsConditions,
                style: AppStyle.mediumStyle
                    .copyWith(color: AppColors.primaryBackground,decoration: TextDecoration.underline,decorationColor: AppColors.primaryBackground),
              ),
            ),
          ],
        ) :
        Text(
          title!,
          style: AppStyle.mediumStyle
              .copyWith(color: AppColors.primaryBlack,),
        ),
      ],
    );
  }
}
