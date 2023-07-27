import 'package:assignmentapp/UI/commons/text_widgets/base/headline_body_one_base_widget.dart';
import 'package:assignmentapp/infrastructure/commons/constants/app_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowButton extends StatelessWidget {

  final GestureTapCallback onFollowButtonTap;

  const FollowButton({super.key, required this.onFollowButtonTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onFollowButtonTap,
      splashColor: ColorConstants.transparent,
      focusColor: ColorConstants.transparent,
      highlightColor: ColorConstants.transparent,
      hoverColor: ColorConstants.transparent,
      child: Container(
        height: 24.0,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          color: ColorConstants.followButtonColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: HeadlineBodyOneBaseWidget(
              title: AppConstants.followText.tr,
              titleColor: ColorConstants.white,
              fontSize: 12.0,
              fontFamily: FontConstant.notoSansKRMedium,
            ),
          ),
        ),
      ),
    );
  }
}
