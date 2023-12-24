import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_style.dart';
import '../../../themes/app_text.dart';
import '../../../themes/assets.dart';

class SearchCard extends StatelessWidget {
  final String ? hintText;
  final String ? title;
  final Function(String) ? onChanged;
  final TextEditingController ? controller;
  const SearchCard({
    super.key, this.hintText, this.title, this.onChanged, this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title!,style: AppStyle.boldStyle.copyWith(fontSize: 20),),
              SvgPicture.asset(AppIcons.filter),
            ],
          ),
          const SizedBox(height: 10),
          TextField(
            onChanged: onChanged,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: AppColors.primaryWhite,
              suffixIcon: Icon(Icons.search,color: AppColors.primaryBlack.withOpacity(0.5),),
              hintStyle: AppStyle.regularStyle.copyWith(
                fontSize: 13,
                color: AppColors.primaryBlack.withOpacity(0.5),),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColors.primaryBorder),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}