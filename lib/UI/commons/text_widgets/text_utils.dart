import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class CaptionText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const CaptionText({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      textAlign: align,
      style: style(context).copyWith(fontSize: 10),
      maxLines: maxLine,
    );
  }

  TextStyle style(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .caption!
        .copyWith(color: color, fontFamily:fontFamily ?? FontConstant.notoSansKRRegular);
  }
}

class SmallText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const SmallText({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 12.0,
        color: color,
        fontFamily: fontFamily ?? FontConstant.notoSansKRMedium,
      ),
      maxLines: maxLine,
    );
  }
}

class SmallVerifyText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const SmallVerifyText({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.red,
        fontFamily:fontFamily ?? FontConstant.notoSansKRMedium,
      ),
      maxLines: maxLine,
    );
  }
}

class Body1Text extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final int fontSize;
  final String? fontFamily;

  const Body1Text({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.textOverflow,
    this.maxLine,
    this.fontSize = 14,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      textAlign: align,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: fontSize + 0.0,
        color: color,
        fontFamily: fontFamily ?? FontConstant.notoSansKRRegular,
      ),
      maxLines: maxLine,
    );
  }

  TextStyle style(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          color: color,
        );
  }
}

class Body2Text extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const Body2Text({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: 14, color: color, fontFamily:fontFamily ?? FontConstant.notoSansKRMedium),
      maxLines: maxLine,
    );
  }

  TextStyle style(BuildContext context) {
    return Theme.of(context).textTheme.bodyText2!.copyWith(
          color: color,
        );
  }
}

class SubTitleText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const SubTitleText({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      textAlign: align,
      style: style(context).copyWith(
        fontSize: 16,
        fontFamily:fontFamily ?? FontConstant.notoSansKRBold,
      ),
      maxLines: maxLine,
    );
  }

  TextStyle style(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
          color: color,
        );
  }
}

class TitleText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const TitleText({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: false,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 20.0,
        fontFamily:fontFamily ??  FontConstant.notoSansKRRegular,
        color: color,
        decoration: TextDecoration.none,
      ),
      maxLines: maxLine,
    );
  }

  TextStyle style(BuildContext context) {
    return Theme.of(context).textTheme.caption!.copyWith(
          color: color,
        );
  }
}

class SubHeadText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const SubHeadText({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
      style: TextStyle(
        fontSize: 20.0,
        color: color,
        fontFamily: fontFamily ?? FontConstant.notoSansKRRegular,
      ),
      maxLines: maxLine,
    );
  }
}

class HeadlineText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const HeadlineText({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      style: style(context).copyWith(
        fontSize: 22,
        fontFamily: fontFamily ?? FontConstant.notoSansKRMedium,
      ),
      maxLines: maxLine,
    );
  }

  TextStyle style(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          color: color,
        );
  }
}

class Display1Text extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? align;
  final int? maxLine;

  final String? fontFamily;

  const Display1Text({
    Key? key,
    this.text,
    this.color,
    this.align,
    this.maxLine, this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      softWrap: true,
      textAlign: align,
      overflow: TextOverflow.visible,
      style: style(context).copyWith(
        fontSize: 30,
        fontFamily: fontFamily ?? FontConstant.notoSansKRRegular,
      ),
      maxLines: maxLine,
    );
  }

  TextStyle style(BuildContext context) {
    return Theme.of(context).textTheme.bodyText2!.copyWith(
          color: color,
        );
  }
}
