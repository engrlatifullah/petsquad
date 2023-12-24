import 'package:flutter/material.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_style.dart';
import '../../../../../themes/assets.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(AppImages.profilePic),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stellina Doe",
                      style: AppStyle.regularStyle.copyWith(
                          color: AppColors.primaryBlack, fontSize: 14),
                    ),

                    Text(
                      "5 Mins ago",
                      style: AppStyle.regularStyle.copyWith(
                          color: AppColors.primaryLightGrey, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  "Beautyful Picture 😍😍😍",
                  style: AppStyle.semiBoldStyle.copyWith(
                      color: AppColors.primaryBlack, fontSize: 14),
                ),
                Text(
                  "Reply",
                  style: AppStyle.regularStyle.copyWith(
                      color: AppColors.primaryLightGrey, fontSize: 14),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}