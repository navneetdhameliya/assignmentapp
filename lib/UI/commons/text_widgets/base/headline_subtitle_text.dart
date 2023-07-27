import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class HeadlineSubTitleTextWidget extends StatelessWidget {
  final String? fontFamily;

  const HeadlineSubTitleTextWidget(
      {Key? key,
      this.title,
      this.titleColor = Colors.black,
      this.titleTextAlign = TextAlign.center,
      this.textDecoration,
      this.fontSize, this.fontFamily})
      : super(key: key);
  final String? title;
  final Color titleColor;
  final TextAlign titleTextAlign;
  final TextDecoration? textDecoration;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: titleTextAlign,
      style: TextStyle(
        color: titleColor,
        decoration: textDecoration,
        fontSize: fontSize,
        fontFamily: fontFamily ?? FontConstant.notoSansKRRegular,
      ),
    );
  }
}
