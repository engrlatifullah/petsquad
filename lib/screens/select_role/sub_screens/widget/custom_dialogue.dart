import 'package:flutter/material.dart';
import 'package:petsquad/themes/app_colors.dart';


customDialogue({required BuildContext context,required List days, required Function(String) onSelect}){
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        backgroundColor: AppColors.primaryWhite,
        title: const Text('Select Day'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: days.map<Widget>(( day) {
            return ListTile(
              title: Text(
                day,
                style: TextStyle(fontSize: 18),
              ),
              onTap: (){
                onSelect(day);
                Navigator.pop(context);
              },
            );
          }).toList(),
        ),
      );
    },
  );
}