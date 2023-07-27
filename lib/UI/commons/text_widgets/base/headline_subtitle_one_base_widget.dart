import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class HeadlineSubTitleOneBaseWidget extends StatelessWidget {
  final String? fontFamily;

  const HeadlineSubTitleOneBaseWidget(
      {Key? key,
      this.title,
      this.titleColor = Colors.black,
      this.titleTextAlign = TextAlign.center, this.fontFamily,})
      : super(key: key);
  final String? title;
  final Color titleColor;
  final TextAlign titleTextAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: titleTextAlign,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: titleColor,
            fontSize: 16,
        fontFamily: fontFamily ?? FontConstant.libreFranklinRegular
          ),
    );
  }
}
