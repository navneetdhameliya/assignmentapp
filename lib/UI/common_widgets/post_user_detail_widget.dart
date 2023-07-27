import 'package:assignmentapp/UI/common_widgets/user_profile_widget.dart';
import 'package:assignmentapp/UI/commons/text_widgets/base/headline_body_one_base_widget.dart';
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:assignmentapp/infrastructure/commons/constants/image_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/method_constants.dart';
import 'package:assignmentapp/infrastructure/models/responses/post_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostUserDetailWidget extends StatelessWidget {

  final UserData userData;
  final String timeStamp;
  final bool commentOrReply;
  final bool profileWidgetCombine;

  const PostUserDetailWidget({super.key, required this.userData, required this.timeStamp, this.commentOrReply = true, this.profileWidgetCombine = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: profileWidgetCombine,
          child: UserProfileWidget(
            dimension: 36.0,
            imagePath: userData
                .userProfile!,
          ),
        ),
        Visibility(visible: profileWidgetCombine,child: const SizedBox(width: 12.0)),
        Column(
          crossAxisAlignment:
          CrossAxisAlignment
              .start,
          children: [
            Row(
              children: [
                HeadlineBodyOneBaseWidget(
                  title: userData
                      .userName,
                  fontSize: 14.0,
                  fontFamily:
                  FontConstant
                      .notoSansKRBold,
                  titleColor:
                  ColorConstants
                      .userTitleColor,
                ),
                const SizedBox(
                    width: 4.0),
                Visibility(
                  visible: userData.verified!,
                  child: SvgPicture.asset(
                    ImageConstants
                        .verifiedIcon,
                    width: 14.0,
                    height: 14.0,
                  ),
                ),
                const SizedBox(
                    width: 4.0),
                HeadlineBodyOneBaseWidget(
                  title: MethodConstants
                      .getTimeDifference(timeStamp),
                  fontSize: 10.0,
                  fontFamily:
                  FontConstant
                      .notoSansKRMedium,
                  titleColor:
                  ColorConstants
                      .hintTextColor,
                ),
              ],
            ),
            Visibility(
              visible: commentOrReply,
              child: HeadlineBodyOneBaseWidget(
                title:
                "${userData.userHeight!}cm · ${userData.userWeight!}kg",
                fontSize: 11.0,
                fontFamily: FontConstant
                    .notoSansKRRegular,
                titleColor:
                ColorConstants
                    .hintTextColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
