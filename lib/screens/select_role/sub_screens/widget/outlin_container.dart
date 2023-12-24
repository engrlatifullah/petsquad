import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_style.dart';
import '../../../../themes/app_text.dart';

class OutlineContainer extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const OutlineContainer({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.primaryBorder),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppStyle.regularStyle.copyWith(
                  fontSize: 14,
                  color: AppColors.primaryBlack.withOpacity(0.5)),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: AppColors.primaryBlack.withOpacity(0.5),
            )
          ],
        ),
      ),
    );
  }
}
