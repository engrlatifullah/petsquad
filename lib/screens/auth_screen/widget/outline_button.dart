import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_style.dart';



class OutlineButton extends StatelessWidget {
  final String ? title;
  final VoidCallback ? onTap;
  const OutlineButton({
    super.key, this.title, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryWhite,width: 2),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
            child: Text(
              title ?? "",
              style: AppStyle.semiBoldStyle
                  .copyWith(fontSize: 17),
            )),
      ),
    );
  }
}