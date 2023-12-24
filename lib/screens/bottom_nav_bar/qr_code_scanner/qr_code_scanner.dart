import 'package:flutter/material.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../themes/app_style.dart';
import '../../../themes/assets.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(AppText.identifyPet,style: AppStyle.semiBoldStyle.copyWith(fontSize: 20),),
        ),
        RoundCard(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(AppText.pleaseScanQrCode,textAlign: TextAlign.center,style: AppStyle.mediumStyle.copyWith(color: AppColors.primaryBlack.withOpacity(0.6),fontSize:14),),
                const SizedBox(height: 25,),
                Image.asset(AppImages.qr),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
