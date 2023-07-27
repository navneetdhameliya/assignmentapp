import 'package:assignmentapp/infrastructure/commons/constants/layout_constants.dart';
import 'package:flutter/material.dart';

class ThemeConstant {
  static final light = ThemeData();

  InputDecoration getDecorationForTextField(String hint) {
    return InputDecoration(
      contentPadding: LayoutConstants.standardPadding,
      hintText: hint,
      hintStyle: const TextStyle(fontSize: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(0.01),
        ),
      ),
    );
  }

}
