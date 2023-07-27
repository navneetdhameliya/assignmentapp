import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class HeadlineFourBaseWidget extends StatelessWidget {
  final String? fontFamily;

  const HeadlineFourBaseWidget({
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
      style: Theme.of(context).textTheme.headline4!.copyWith(
          color: titleColor, fontFamily: fontFamily ?? FontConstant.notoSansKRRegular, fontSize: 34),
    );
  }
}
