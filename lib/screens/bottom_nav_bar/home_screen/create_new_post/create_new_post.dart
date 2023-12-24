import 'package:flutter/material.dart';
import 'package:petsquad/screens/bottom_nav_bar/home_screen/create_new_post/sos_post_confirmation/sos_post_confirmation.dart';
import 'package:petsquad/screens/bottom_nav_bar/home_screen/create_new_post/under_review/under_review.dart';
import 'package:petsquad/screens/select_role/sub_screens/widget/custom_checkbox_listtile.dart';
import 'package:petsquad/screens/select_role/sub_screens/widget/upload_widget.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_style.dart';
import 'package:petsquad/utils/app_utils.dart';
import 'package:petsquad/widget/background_container.dart';
import 'package:petsquad/widget/custom_app_bar.dart';
import 'package:petsquad/widget/custom_input.dart';
import 'package:petsquad/widget/primary_button.dart';
import 'package:petsquad/widget/round_card.dart';

import '../../../../themes/app_text.dart';

class CreateNewPost extends StatefulWidget {
  const CreateNewPost({Key? key}) : super(key: key);

  @override
  State<CreateNewPost> createState() => _CreateNewPostState();
}

class _CreateNewPostState extends State<CreateNewPost> {
  bool sosValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            const CustomAppBar(title: AppText.createNewPost),
            RoundCard(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.description,
                        style: AppStyle.mediumStyle.copyWith(
                            color: AppColors.primaryBlack, fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      const CustomInput(
                          hintText: AppText.description, maxLines: 5),
                      const SizedBox(height: 20),
                      const UploadWidget(
                        title: AppText.uploadImagesOrVideos,
                      ),
                      const SizedBox(height: 20),
                      CustomCheckBoxListTile(
                          value: sosValue,
                          title: AppText.sos,
                          onChanged: (v) {
                            setState(() {
                              sosValue = v!;
                            });
                          }),
                      const SizedBox(height: 180),
                      PrimaryButton(
                        title: AppText.post,
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: AppColors.primaryWhite,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return const SosPostConfirmation();
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
