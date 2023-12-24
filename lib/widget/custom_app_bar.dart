import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_style.dart';


class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryWhite.withOpacity(0.20),
                border: Border.all(
                  color: AppColors.primaryWhite.withOpacity(0.5),
                ),
              ),
              child: const Icon(
                Icons.arrow_back_rounded,
                color: AppColors.primaryWhite,
              ),
            ),
          ),
          SizedBox(width: 18),
          Text(title,style: AppStyle.semiBoldStyle.copyWith(fontSize: 20),)

        ],
      ),
    );
  }
}