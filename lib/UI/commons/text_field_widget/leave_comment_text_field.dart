import 'package:assignmentapp/infrastructure/commons/constants/app_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeaveCommentTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;

  const LeaveCommentTextField({super.key, required this.textEditingController, required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      focusNode: focusNode,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: AppConstants.leaveCommentText.tr,
          hintStyle: const TextStyle(
            fontSize: 12.0,
            fontFamily: FontConstant.notoSansKRRegular,
            color: ColorConstants.hintTextColor,
          ),
      ),
      cursorColor: ColorConstants.hintTextColor,
    );

  }
}
