import 'package:flutter/material.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../themes/app_text.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: Column(
        children: [
          const CustomAppBar(title: AppText.termsConditions),
          RoundCard(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Text(
                  "A Terms and Conditions agreement outlines the terms that visitors must agree to if they want to interact with your website. Essentially, if the visitor continues to use the website after accepting the Terms, they enter into a contract with you.Unlike you aren't legally required to have a Terms and Conditions agreement. However, there are many reasons why you should draft one and display it on your website.This article will discuss those reasons and show you a few of the most important clauses your Terms and Conditions should include.\n\nA Terms and Conditions agreement outlines the terms that visitors must agree to if they want to interact with your website. Essentially, if the visitor continues to use the website after accepting the Terms, they enter into a contract with you.Unlike you aren't legally required to have a Terms and Conditions agreement. However, there are many reasons why you should draft one and display it on your website.This article will discuss those reasons and show you a few of the most important clauses your Terms and Conditions should include. \n\n A Terms and Conditions agreement outlines the terms that visitors must agree to if they want to interact with your website. Essentially, if the visitor continues to use the website after accepting the Terms, they enter into a contract with you.Unlike you aren't legally required to have a Terms and Conditions agreement. However, there are many reasons why you should draft one and display it on your website.This article will discuss those reasons and show you a few of the most important clauses your Terms and Conditions should include.",
                  style: AppStyle.regularStyle
                      .copyWith(color: AppColors.primaryBlack.withOpacity(0.8), fontSize: 14),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
