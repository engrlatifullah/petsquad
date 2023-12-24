import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_style.dart';
import '../../../themes/assets.dart';
class SmartPetWidget extends StatelessWidget {
  final String ? title;
  final VoidCallback ? onTap;
  const SmartPetWidget({
    super.key, this.title, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.primaryLight,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.smart,color: AppColors.primaryBackground,),
            SizedBox(width: 10,),
            Text(title!,style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryBackground,),)
          ],
        ),
      ),
    );
  }
}