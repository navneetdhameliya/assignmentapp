import 'package:assignmentapp/UI/common_widgets/sized_boxs.dart';
import 'package:assignmentapp/UI/commons/text_widgets/base/headline_body_one_base_widget.dart';
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:assignmentapp/infrastructure/commons/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeCommentWidget extends StatelessWidget {

  final bool liked;
  final GestureTapCallback onLikeTap;
  final int likeCount;
  final int? commentCount;

  const LikeCommentWidget({super.key, required this.liked, required this.onLikeTap, required this.likeCount, this.commentCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            InkWell(
              splashColor: ColorConstants.transparent,
              focusColor: ColorConstants.transparent,
              highlightColor: ColorConstants.transparent,
              hoverColor: ColorConstants.transparent,
              onTap: onLikeTap,
              child: SizedBox(
                width: 32.0,
                height: 32.0,
                child: Image.asset(ImageConstants.heartIcon, color: liked ?  Colors.red : null),
              ),
            ),
            HeadlineBodyOneBaseWidget(
              title: likeCount.toString(),
              titleColor: ColorConstants.imageReplaceIconColor,
              fontFamily: FontConstant.notoSansKRRegular,
              fontSize: 12.0,
            ),
          ],
        ),
        const SizedBox8Width(),
        commentCount != null ? Row(
          children: [
            SizedBox(
              width: 32.0,
              height: 32.0,
              child: SvgPicture.asset(ImageConstants.commentIcon),
            ),
            HeadlineBodyOneBaseWidget(
              title: commentCount.toString(),
              titleColor: ColorConstants.imageReplaceIconColor,
              fontFamily: FontConstant.notoSansKRRegular,
              fontSize: 12.0,
            ),
          ],
        ) : Container(),
        commentCount != null ? const SizedBox8Width() : Container(),
      ],
    );
  }
}
