import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class HeadlineOneBaseWidget extends StatelessWidget {
  final String? fontFamily;

  const HeadlineOneBaseWidget(
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
      style: Theme.of(context).textTheme.headline1!.copyWith(
            color: titleColor,
            fontSize: 96,
        fontFamily: fontFamily ?? FontConstant.libreFranklinThin,
          ),
    );
  }
}
