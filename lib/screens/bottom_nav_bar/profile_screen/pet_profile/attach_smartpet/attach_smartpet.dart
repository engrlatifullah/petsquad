import 'package:flutter/material.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../../../themes/app_style.dart';

class AttachSmartPet extends StatelessWidget {
  const AttachSmartPet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(title: AppText.attachSmartPet),
            RoundCard(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      AppText.scanTheQr,textAlign: TextAlign.center,
                      style: AppStyle.mediumStyle.copyWith(
                          color: AppColors.primaryBlack.withOpacity(0.6),
                          fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(AppImages.qr)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
