import 'package:flutter/material.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static TextStyle boldStyle = GoogleFonts.poppins(
      fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.primaryWhite);
  static TextStyle semiBoldStyle = GoogleFonts.poppins(
      fontSize: 22, fontWeight: FontWeight.w600, color: AppColors.primaryWhite);
  static TextStyle mediumStyle = GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.primaryWhite);

  static TextStyle regularStyle = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.primaryWhite);
}
