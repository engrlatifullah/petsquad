import 'package:flutter/material.dart';

import '../../../../../themes/app_colors.dart';

class CustomDropDown extends StatelessWidget {
  final List<String> items;
  final String selected;
  final String hint;
  final void Function(dynamic v) onChanged;

  const CustomDropDown({
    Key? key,
    required this.items,
    required this.selected,
    required this.hint,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.primaryBorder),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(hint),
          value: selected,
          items: items.toSet().map((String e) {
            return DropdownMenuItem<String>(
              value: e,
              child: Text(e),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
