import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petsquad/screens/auth_screen/signup_screen.dart';
import 'package:petsquad/screens/auth_screen/widget/outline_button.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';

import '../../themes/app_style.dart';
import '../../themes/app_text.dart';
import '../../widget/primary_button.dart';
import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              SvgPicture.asset(AppIcons.logo),
              const SizedBox(height: 30),
              Text(
                AppText.login,
                style: AppStyle.semiBoldStyle,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  AppText.enterMobileNumberToReceiveOtp,
                  style: AppStyle.regularStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: CountryCodePicker(
                      onChanged: (v) {},
                      initialSelection: 'In',
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                    ),
                    hintText: AppText.enterMobileNumber,
                    filled: true,
                    fillColor: AppColors.primaryWhite,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              const SizedBox(height: 30),
              PrimaryButton(
                title: AppText.reRequestOTP,
                onTap: () {
                  AppUtils.navigateToPage(context, const OtpScreen());},
              ),
              const Spacer(
                flex: 2,
              ),
              Text(
                AppText.newToThePetSquadJoinTheSquadNow, style: AppStyle.mediumStyle,),
              const SizedBox(height: 10),
              OutlineButton(
                title: AppText.signUp,
                onTap: () {
                  AppUtils.navigateToPage(context, const SignUp());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
