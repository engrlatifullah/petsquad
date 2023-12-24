import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_style.dart';
import '../../../../themes/app_text.dart';
import '../../../../themes/assets.dart';
import '../../../../utils/app_utils.dart';
import '../comment_bottom_sheet/comment_bottom_sheet.dart';
class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              backgroundImage: AssetImage(AppImages.avatar),
            ),
            title: Row(
              children: [
                Text(
                  "Ajay Sinha",
                  style: AppStyle.semiBoldStyle.copyWith(
                      color: AppColors.primaryBlack, fontSize: 15),
                ),
                const SizedBox(width: 5),
                Text(
                  AppText.at,
                  style: AppStyle.regularStyle.copyWith(
                      color: AppColors.primaryLightGrey, fontSize: 15),
                ),
                const SizedBox(width: 5),
                Text(
                  "Ajay Sinha",
                  style: AppStyle.semiBoldStyle.copyWith(
                      color: AppColors.primaryBlack, fontSize: 15),
                ),
              ],
            ),
            subtitle: Text(
              AppText.petOwner,
              style: AppStyle.regularStyle.copyWith(
                  color: AppColors.primaryCyan, fontSize: 12),
            ),
          ),
          Text(
            "dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an",
            style: AppStyle.regularStyle.copyWith(color: AppColors.primaryLightGrey,),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: AppUtils.getHeight(context, 0.3),
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(AppImages.postImage,fit: BoxFit.cover,),
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              SvgPicture.asset(AppIcons.favorite),
              const SizedBox(width: 20),
              InkWell(
                  onTap: (){
                    showModalBottomSheet(context: context,
                      backgroundColor: AppColors.primaryWhite,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                      ),
                      builder: (BuildContext context) {
                        return const CommentBottomSheet();
                      },);
                  },
                  child: SvgPicture.asset(AppIcons.comment)),
              const Spacer(),
              SvgPicture.asset(AppIcons.share),
            ],
          )
        ],
      ),
    );
  }
}