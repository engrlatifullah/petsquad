import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petsquad/screens/bottom_nav_bar/home_screen/comment_bottom_sheet/widget/comment_widget.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';

import '../../../../themes/app_style.dart';

class CommentBottomSheet extends StatelessWidget {
  const CommentBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(4, (index) => const CommentWidget()),
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.primaryLightGrey),
              ),
              child:  Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: AppText.addComment,
                        prefixIcon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: AppColors.primaryLightGrey,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryYellow,

                    ),
                    child: SvgPicture.asset(AppIcons.send,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
