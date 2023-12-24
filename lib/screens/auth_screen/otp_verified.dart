import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/screens/select_role/select_role.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/primary_button.dart';

class OtpVerified extends StatelessWidget {
  const OtpVerified({Key? key}) : super(key: key);

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
              Text(AppText.yourOTPVerified,style: AppStyle.semiBoldStyle,),
              const Spacer(),
              PrimaryButton(title: AppText.continu,onTap: (){
                AppUtils.navigateToPage(context, const SelectRole());
              },),
            ],
          ),
        ),
      ),
    );
  }
}
