import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petsquad/utils/app_utils.dart';

import '../../../themes/assets.dart';
import '../home_screen/notification_screen/notification_screen.dart';

class CustomAppBarWithNotification extends StatelessWidget {
  const CustomAppBarWithNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 60,
              width: 120,
              child: SvgPicture.asset(AppIcons.logo)),
          InkWell(
              onTap: (){
                AppUtils.navigateToPage(context, const NotificationScreen());
              },
              child: SvgPicture.asset(AppIcons.notification)),
        ],
      ),
    );
  }
}