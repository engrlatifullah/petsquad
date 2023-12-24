import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/assets.dart';
import '../utils/app_utils.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget  child;
  const BackgroundContainer({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppUtils.getHeight(context, 1),
      decoration:  BoxDecoration(
        color: AppColors.primaryBackground,
        image: DecorationImage(
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          image: AssetImage(AppImages.backgroundVector),),
      ),
      child: SafeArea(child: child),
    );
  }
}