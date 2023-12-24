import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../themes/app_colors.dart';


class OtpTextField extends StatelessWidget {
  final Function(String v) ? onChanged;


  const OtpTextField({
    Key? key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextField(
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(left: 20,top: 10),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primaryWhite
            ),
          ),

        ),
      ),
    );
  }
}