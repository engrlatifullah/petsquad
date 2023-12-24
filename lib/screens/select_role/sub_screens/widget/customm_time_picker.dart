import 'package:flutter/material.dart';


customTimePicker({required BuildContext context, required Function(TimeOfDay?) onTap})async{

  final time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
  onTap(time);

}