import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class HeadlineTwoBaseWidget extends StatelessWidget {
  final String? fontFamily;

  const HeadlineTwoBaseWidget({
    Key? key,
    this.title,
    this.titleColor = Colors.black, this.fontFamily,
  }) : super(key: key);
  final String? title;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context).textTheme.headline2!.copyWith(
            color: titleColor,
            fontSize: 60,
            fontFamily: fontFamily ?? FontConstant.notoSansKRRegular,
          ),
    );
  }
}
