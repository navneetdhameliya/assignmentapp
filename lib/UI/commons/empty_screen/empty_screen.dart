import 'package:assignmentapp/UI/commons/text_widgets/base/headline_body_one_base_widget.dart';
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key, required this.errorMsg, this.errorDsc, required this.svg}) : super(key: key);
  final String errorMsg;
  final String? errorDsc;
  final String svg;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(),
        SvgPicture.asset(
          svg,
          height: 110,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HeadlineBodyOneBaseWidget(
            title: errorMsg,
            titleColor: ColorConstants.black.withOpacity(0.8),
            fontSize: 20.0,
            fontFamily: FontConstant.notoSansKRRegular,
            titleTextAlign: TextAlign.center,
          ),
        ),
        if (errorDsc != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HeadlineBodyOneBaseWidget(
              titleTextAlign: TextAlign.center,
              title: errorDsc,
              titleColor: ColorConstants.black.withOpacity(0.8),
              fontSize: 14.0,
              fontFamily: FontConstant.notoSansKRRegular,
            ),
          ),
      ],
    );
  }
}
