import 'package:flutter/material.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/primary_button.dart';

import '../../../../../themes/app_text.dart';
import '../under_review/under_review.dart';

class SosPostConfirmation extends StatelessWidget {
  const SosPostConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              AppText.createNewSos,
              textAlign: TextAlign.center,
              style: AppStyle.semiBoldStyle
                  .copyWith(color: AppColors.primaryBlack, fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: AppUtils.getHeight(context, 0.3),
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(AppImages.postImage,fit: BoxFit.cover,),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  onTap: (){
                    AppUtils.navigateToPage(context, const UnderReview());
                  },
                  title: AppText.post,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.primaryDarkRed,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                        child: Text(
                          AppText.cancel,
                          style: AppStyle.semiBoldStyle
                              .copyWith(color: AppColors.primaryDarkRed, fontSize: 16),
                        )),
                  ),
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
