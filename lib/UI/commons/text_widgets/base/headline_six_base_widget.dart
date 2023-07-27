import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class HeadlineSixBaseWidget extends StatelessWidget {
  final String? fontFamily;

  const HeadlineSixBaseWidget({
    Key? key,
    this.title,
    this.titleColor = Colors.black,
    this.titleTextAlign = TextAlign.center,
    this.maxLine, this.fontFamily,
  }) : super(key: key);
  final String? title;
  final Color titleColor;
  final TextAlign titleTextAlign;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context).textTheme.headline6!.copyWith(
            color: titleColor,
            fontSize: 20,
            fontFamily: fontFamily ?? FontConstant.libreFranklinMedium,
          ),
      textAlign: titleTextAlign,
      maxLines: maxLine,
    );
  }
}
