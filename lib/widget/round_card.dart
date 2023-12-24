import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/assets.dart';


class RoundCard extends StatelessWidget {
  final Widget ? child;
  final bool isPic;
  const RoundCard({
    super.key, this.child,  this.isPic = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        decoration:  BoxDecoration(
          color: AppColors.primaryWhite,
          image: isPic ?const DecorationImage(image: AssetImage(AppImages.capaVector),fit: BoxFit.cover,) : null,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
        ),
        child: child,
      ),
    );
  }
}