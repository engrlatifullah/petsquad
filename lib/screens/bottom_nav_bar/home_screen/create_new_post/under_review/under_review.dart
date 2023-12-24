import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:petsquad/screens/select_role/select_role.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/primary_button.dart';

class UnderReview extends StatelessWidget {
  const UnderReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(),
              const Spacer(),
              SvgPicture.asset(AppIcons.review),
              const SizedBox(height: 10),
              Text(
                AppText.yourPostIsUnderReview,
                style: AppStyle.semiBoldStyle.copyWith(fontSize: 27),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "our champs will review this post as soon as possible to verify if it’s a genuine sos. if approved, it will get posted as an SOS. if not approved, it will get posted as a regular post. ",
                  textAlign: TextAlign.center,
                  style: AppStyle.regularStyle.copyWith(fontSize: 15),
                ),
              ),
              const Spacer(),
              PrimaryButton(
                title: AppText.done,
                onTap: () {
                  AppUtils.navigateToPage(context, const BottomNavBar());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
