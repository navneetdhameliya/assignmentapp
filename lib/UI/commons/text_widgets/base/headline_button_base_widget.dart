import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class HeadlineBodyButtonBaseWidget extends StatelessWidget {
  final String? fontFamily;

  const HeadlineBodyButtonBaseWidget({
     Key? key,
     this.title,
    this.titleColor = Colors.black,
    this.titleTextAlign = TextAlign.center, this.fontFamily,
  }) : super(key: key);
  final String? title;
  final Color? titleColor;
  final TextAlign? titleTextAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(color: titleColor,fontSize: 14, fontFamily: fontFamily ?? FontConstant.libreFranklinMedium)
          .copyWith(decoration: TextDecoration.underline),
    );
  }
}
