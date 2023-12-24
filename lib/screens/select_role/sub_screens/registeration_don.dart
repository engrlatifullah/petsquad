import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:petsquad/screens/select_role/select_role.dart';
import 'package:petsquad/screens/select_role/sub_screens/exploar_the_petsquad.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/primary_button.dart';

class RegistrationDone extends StatelessWidget {
  const RegistrationDone({Key? key}) : super(key: key);

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
              SvgPicture.asset(AppIcons.done),
              const SizedBox(height: 10),
              Text(
                AppText.thankYou,
                style: AppStyle.semiBoldStyle.copyWith(fontSize: 27),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  AppText.yourRequestToJoinThepetsquadReceived,
                  textAlign: TextAlign.center,
                  style: AppStyle.regularStyle.copyWith(fontSize: 15),
                ),
              ),
              const Spacer(),
              PrimaryButton(
                title: AppText.done,
                onTap: () {
                  AppUtils.navigateToPage(context, const ExploreThePetSquad());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
