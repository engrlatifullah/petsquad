import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_style.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;
  const CustomListTile({
    super.key, required this.title, required this.subTitle, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.primaryBackground.withOpacity(0.2),
          child: SvgPicture.asset(icon,color: AppColors.primaryBackground,),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: AppStyle.regularStyle.copyWith(
                color: AppColors.primaryLightCyan,fontSize: 12
            ),),
            const SizedBox(height: 5),
            Text(subTitle,style: AppStyle.mediumStyle.copyWith(
                color: AppColors.primaryBlack,fontSize: 16
            ),),
          ],
        )
      ],
    );
  }
}