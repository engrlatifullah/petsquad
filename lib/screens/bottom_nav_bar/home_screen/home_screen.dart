import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/screens/bottom_nav_bar/home_screen/widget/post_card.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../themes/app_text.dart';
import '../widget/custom_appbar_with_notification.dart';
import 'comment_bottom_sheet/comment_bottom_sheet.dart';
import 'create_new_post/create_new_post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Column(
      children: [
        const CustomAppBarWithNotification(),
        RoundCard(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(AppImages.profilePic),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            AppUtils.navigateToPage(context, const CreateNewPost());
                          },
                          child: Container(
                            height: 45,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            // width:double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(37),
                              border: Border.all(color: AppColors.primaryBorder)
                            ),
                            child: Text(AppText.createNewPost,style: AppStyle.regularStyle.copyWith(
                              color: AppColors.primaryLightGrey,fontSize: 12
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: AppColors.primaryLightGrey.withOpacity(0.2),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return const PostCard();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 10,
                      width: double.infinity,
                      color: AppColors.primaryLightGrey.withOpacity(0.2),
                    );
                  },
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}


