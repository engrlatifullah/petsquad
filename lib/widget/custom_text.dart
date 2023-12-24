import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_style.dart';

class CustomText extends StatelessWidget {
  final String  title;
  const CustomText({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(text: title,style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryBlack),children:  [
        TextSpan(text: "*",style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryRed))
      ]),
    );
  }
}
