import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomDatePicker extends StatelessWidget {
  final Function(String ?) ? onChangedDay;
  final Function(String ?) ? onChangedMonth;
  final Function(String ?) ? onChangedYear;
  const CustomDatePicker({
    super.key, this.onChangedDay, this.onChangedMonth, this.onChangedYear,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownDatePicker(
      dayFlex: 2,

        inputDecoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          enabledBorder:  OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.circular(18),
            borderSide:  const BorderSide(
                color: AppColors.primaryBorder, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: const BorderSide(color: AppColors.primaryBlack),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        // optional
        isDropdownHideUnderline: false,

        onChangedDay: onChangedDay,
        onChangedMonth: onChangedMonth,
        onChangedYear: onChangedYear

    );
  }
}