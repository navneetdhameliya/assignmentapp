import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class HeadlineSubTitleTwoBaseWidget extends StatelessWidget {
  final String? fontFamily;

  const HeadlineSubTitleTwoBaseWidget({
    Key? key,
    this.title,
    this.titleColor = Colors.black,
    this.titleTextAlign = TextAlign.center, this.fontFamily,
  }) : super(key: key);
  final String? title;
  final Color titleColor;
  final TextAlign titleTextAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: titleTextAlign,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            color: titleColor,
            fontSize: 14,
            fontFamily: fontFamily ??  FontConstant.libreFranklinMedium,
          ),
    );
  }
}
