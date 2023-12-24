import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/round_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            Row(
              children: [
                const CustomAppBar(title: AppText.notifications),
                const Spacer(),
                Column(
                  children: [
                    SvgPicture.asset(AppIcons.sos),

                    Text(
                      AppText.sos,
                      style: AppStyle.boldStyle.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
              ],
            ),
            RoundCard(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.today,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: AppColors.primaryBlack, fontSize: 19),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: NotificationCard(),
                          );
                        },
                      ),
                      Text(
                        AppText.earlier,
                        style: AppStyle.semiBoldStyle.copyWith(
                            color: AppColors.primaryBlack, fontSize: 19),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: NotificationCard(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(AppImages.profilePic),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Nicole ",
                  style: AppStyle.semiBoldStyle
                      .copyWith(color: AppColors.primaryBlack, fontSize: 16),
                ),
                Text(
                  AppText.likedYourPost,
                  style: AppStyle.semiBoldStyle.copyWith(
                      color: AppColors.primaryLightGrey, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              "Yesterday",
              style: AppStyle.regularStyle
                  .copyWith(color: AppColors.primaryLightGrey, fontSize: 12),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 60,
          width: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              AppImages.postImage,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
