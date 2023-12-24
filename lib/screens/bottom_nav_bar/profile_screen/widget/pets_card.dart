import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_style.dart';

class PetsCard extends StatelessWidget {
  final VoidCallback ? onTap;
  final String ? image;
  final String ? title;
  const PetsCard({
    super.key, this.onTap, this.image, this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap ?? () {},
        child: Container(
          height: 55,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.primaryBorder),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage:
                AssetImage(image!),
              ),
              const SizedBox(width: 10),
              Text(
                title!,
                style: AppStyle.semiBoldStyle.copyWith(
                    color: AppColors.primaryBlack,
                    fontSize: 16),
              ),
            ],
          ),
        ));
  }
}