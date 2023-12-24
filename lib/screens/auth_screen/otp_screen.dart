import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsquad/screens/auth_screen/widget/otp_textfield.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/primary_button.dart';

import '../../themes/app_style.dart';
import '../../themes/app_text.dart';
import '../../themes/assets.dart';
import 'otp_verified.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 50,),
                SvgPicture.asset(AppIcons.logo),
                const SizedBox(height: 30),
                Text(
                  AppText.verification,
                  style: AppStyle.semiBoldStyle,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "${AppText.enterOtpSendToUrNumber} +91 9999228888",
                    style: AppStyle.regularStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OtpTextField(
                      onChanged: (v) {
                        if (v.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OtpTextField(
                      onChanged: (v) {
                        if (v.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OtpTextField(
                      onChanged: (v) {
                        if (v.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OtpTextField(
                      onChanged: (v) {
                        if (v.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                PrimaryButton(
                  title: AppText.continu,
                  onTap: (){
                    AppUtils.navigateToPage(context, const OtpVerified());
                  },
                ),
                const SizedBox(height: 25),
                Text(AppText.rResendCode,style: AppStyle.semiBoldStyle.copyWith(fontSize: 15),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
