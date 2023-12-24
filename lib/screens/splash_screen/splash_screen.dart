import 'package:flutter/material.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:petsquad/utils/app_utils.dart';

import '../../themes/app_style.dart';
import '../../widget/background_container.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    AppUtils.startTimer(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Image.asset(AppImages.startingLogo),
            Image.asset(AppImages.dog,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}


