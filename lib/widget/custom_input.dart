import 'package:flutter/material.dart';
import 'package:petsquad/themes/app_colors.dart';

import '../themes/app_style.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController ? controller;
  final TextInputType ? keyboardType;
  final String ? hintText;
  final int  maxLines;
  const CustomInput({Key? key, this.controller, this.hintText, this.maxLines = 1, this.keyboardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyle.regularStyle.copyWith(
      fontSize: 13,
      color: AppColors.primaryBlack.withOpacity(0.5),),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: AppColors.primaryBorder,
          )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),

        )
      ),

    );
  }
}
