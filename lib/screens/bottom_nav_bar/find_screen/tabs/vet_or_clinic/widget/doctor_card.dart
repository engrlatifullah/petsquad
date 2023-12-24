import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_style.dart';
import '../../../../../../themes/assets.dart';


class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.primaryBorder),
      ),
      child: Row(
        children: [
          //PROFILE IMAGE
          SizedBox(
            height: 75,
            width: 68,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Image.asset(
                AppImages.drProfile,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dr. Ariyo Hartono",
                style: AppStyle.semiBoldStyle.copyWith(
                    color: AppColors.primaryBlack, fontSize: 14),
              ),
              Text(
                "Apollo clinic",
                style: AppStyle.regularStyle.copyWith(
                    color: AppColors.primaryBlack, fontSize: 10),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  SvgPicture.asset(AppIcons.calendar,
                      color: AppColors.primaryLightGrey),
                  const SizedBox(width: 7),
                  Text(
                    "Mon-Fri",
                    style: AppStyle.mediumStyle.copyWith(
                        color: AppColors.primaryLightGrey,
                        fontSize: 10),
                  )
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  SvgPicture.asset(AppIcons.timer,
                      color: AppColors.primaryLightGrey),
                  const SizedBox(width: 7),
                  Text(
                    "12:00am - 01:30 pm",
                    style: AppStyle.mediumStyle.copyWith(
                        color: AppColors.primaryLightGrey,
                        fontSize: 10),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          const CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.primaryBackground,
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios_sharp,size: 20,
                  color: AppColors.primaryWhite,
                ),
              )),
        ],
      ),
    );
  }
}