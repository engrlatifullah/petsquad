import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_style.dart';
import '../../../../themes/assets.dart';
import '../../../../widget/custom_text.dart';


class UploadWidget extends StatelessWidget {
  final VoidCallback ? onTap;
  final String ? image;
  final String ? title;
  const UploadWidget({
    super.key, this.onTap, this.image, this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.primaryBorder)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image ?? AppIcons.upload),
            SizedBox(width: 10,),
            RichText(
              text: TextSpan(text: title,style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryBlack.withOpacity(0.5)),children:  [
                TextSpan(text: " *",style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryRed.withOpacity(0.5)))
              ]),
            )
          ],
        ),
      ),
    );
  }
}